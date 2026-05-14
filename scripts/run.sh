#!/usr/bin/env bash
# Runs the workspace-conf and settingsv2 probes via Bruno CLI and prints summaries.
#
# Usage:
#   ./scripts/run.sh [legacy|v2|all]
#
# Env vars:
#   DATABRICKS_HOST   workspace URL (e.g. https://your.cloud.databricks.com)
#   DATABRICKS_TOKEN  bearer token (PAT or OAuth access_token)
#   If DATABRICKS_TOKEN is unset and the `databricks` CLI is on PATH, this
#   script will run `databricks auth token --host $DATABRICKS_HOST`.
#
# Layout:
#   <repo-root>/
#     ├── bruno/                  Bruno collection (CLI cwd)
#     ├── scripts/run.sh          this script
#     ├── results.json            written here (repo root)
#     └── results-v2.json
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BRUNO_DIR="$REPO_ROOT/bruno"

: "${DATABRICKS_HOST:?Set DATABRICKS_HOST (e.g. https://your.cloud.databricks.com)}"

if [[ -z "${DATABRICKS_TOKEN:-}" ]]; then
  if command -v databricks >/dev/null 2>&1; then
    echo "→ Fetching OAuth token via databricks CLI…" >&2
    DATABRICKS_TOKEN=$(databricks auth token --host "$DATABRICKS_HOST" | jq -r .access_token)
  else
    echo "ERROR: DATABRICKS_TOKEN not set and databricks CLI not found." >&2
    exit 1
  fi
fi

mode="${1:-all}"

run_probe() {
  local label="$1" request="$2" data="$3" out_json="$4"
  echo
  echo "═══════════════════════════════════════════════════════════"
  echo "  Running: $label"
  echo "═══════════════════════════════════════════════════════════"
  set +e
  (
    cd "$BRUNO_DIR"
    npx -y @usebruno/cli run "$request" \
      --env free \
      --env-var "host=$DATABRICKS_HOST" \
      --env-var "token=$DATABRICKS_TOKEN" \
      --json-file-path "$data" \
      --reporter-json "$REPO_ROOT/$out_json"
  )
  local rc=$?
  set -e
  if [[ $rc -ne 0 && $rc -ne 1 ]]; then
    echo "✗ Bruno CLI exited with $rc (unexpected); aborting." >&2
    exit "$rc"
  fi
  echo "→ wrote $out_json (CLI exit=$rc, non-zero is normal during discovery)"
}

summarize_legacy() {
  local f="$REPO_ROOT/$1"
  echo
  echo "── workspace-conf summary ─────────────────────────────────"
  echo "Status counts:"
  jq -r '.[] | .results[] | (.response.status // "skipped") | tostring' "$f" |
    sort | uniq -c | sed 's/^/  /'

  echo
  echo "✅ VALID (200):"
  jq -r '.[] | .results[]
         | select((.response.status // 0) == 200 and (.request.url // "") != "")
         | (.request.url | capture("keys=(?<k>[^&]+)").k)' "$f" | sort | sed 's/^/  /'

  echo
  echo "❌ INVALID (400):"
  jq -r '.[] | .results[]
         | select((.response.status // 0) == 400 and (.request.url // "") != "")
         | (.request.url | capture("keys=(?<k>[^&]+)").k)' "$f" | sort | sed 's/^/  /'

  local other
  other=$(jq -r '.[] | .results[]
                | select((.response.status // 0) != 200
                     and (.response.status // 0) != 400
                     and (.request.url // "") != "")
                | "\(.response.status) \(.request.url | capture("keys=(?<k>[^&]+)").k)"' "$f")
  if [[ -n "$other" ]]; then
    echo
    echo "⚠️  OTHER:"
    echo "$other" | sort | sed 's/^/  /'
  fi
}

summarize_v2() {
  local f="$REPO_ROOT/$1"
  echo
  echo "── settingsv2 summary ─────────────────────────────────────"
  echo "Status counts:"
  jq -r '.[] | .results[] | (.response.status // "skipped") | tostring' "$f" |
    sort | uniq -c | sed 's/^/  /'

  echo
  echo "✅ ENABLED / SET (200):"
  jq -r '.[] | .results[]
         | select((.response.status // 0) == 200 and (.request.url // "") != "")
         | (.request.url | capture("/settings/(?<n>[^?]+)").n)' "$f" | sort | sed 's/^/  /'

  echo
  echo "🟡 RECOGNIZED, NOT SET (404):"
  jq -r '.[] | .results[]
         | select((.response.status // 0) == 404 and (.request.url // "") != "")
         | (.request.url | capture("/settings/(?<n>[^?]+)").n)' "$f" | sort | sed 's/^/  /'

  local other
  other=$(jq -r '.[] | .results[]
                | select((.response.status // 0) != 200
                     and (.response.status // 0) != 404
                     and (.request.url // "") != "")
                | "\(.response.status) \(.request.url | capture("/settings/(?<n>[^?]+)").n)"' "$f")
  if [[ -n "$other" ]]; then
    echo
    echo "❌ FAILURES:"
    echo "$other" | sort | sed 's/^/  /'
  fi
}

case "$mode" in
legacy | all)
  run_probe "Legacy workspace-conf probe" \
    workspace-conf/Probe-Single-Key.yml \
    workspace-conf/data/candidates.json \
    results.json
  summarize_legacy results.json
  ;;
esac

case "$mode" in
v2 | all)
  echo "→ Refreshing v2 candidates from live settings-metadata…"
  curl -fsSL -H "Authorization: Bearer $DATABRICKS_TOKEN" \
    "$DATABRICKS_HOST/api/2.1/settings-metadata?page_size=1000" |
    jq '[.settings_metadata[] | {name, preview_phase, display_name, type: (.type|tostring)}]' \
      >"$BRUNO_DIR/workspace-conf/data/settingsv2_candidates.json"
  run_probe "Settings v2 probe" \
    workspace-conf/Probe-SettingsV2.yml \
    workspace-conf/data/settingsv2_candidates.json \
    results-v2.json
  summarize_v2 results-v2.json
  ;;
esac

case "$mode" in
legacy | v2 | all) ;;
*)
  echo "Unknown mode: $mode (use legacy | v2 | all)" >&2
  exit 2
  ;;
esac

echo
echo "Done."
