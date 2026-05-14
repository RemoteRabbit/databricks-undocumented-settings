#!/usr/bin/env bash
# Regenerates *.md at the repo root from results.json, results-v2.json, and the
# settings-v2 metadata snapshot. Run after scripts/run.sh has produced the
# JSON files.
#
# Layout:
#   <repo-root>/
#     ├── results.json results-v2.json   produced by scripts/run.sh
#     ├── settingsv2-metadata.json       cached metadata (refreshed here)
#     ├── workspace-conf-descriptions.json   hand-maintained legacy docs
#     └── *.md                           output markdown
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

# ── 1. Refresh settings-v2 metadata snapshot ────────────────────────────────
: "${DATABRICKS_HOST:?Set DATABRICKS_HOST}"
: "${DATABRICKS_TOKEN:?Set DATABRICKS_TOKEN}"
echo "→ Fetching latest settings-v2 metadata…"
curl -fsSL -H "Authorization: Bearer $DATABRICKS_TOKEN" \
  "$DATABRICKS_HOST/api/2.1/settings-metadata?page_size=1000" \
  > settingsv2-metadata.json

# ── 2. Legacy workspace-conf markdown (from results.json) ───────────────────
if [[ -f results.json ]]; then
  echo "→ Generating workspace-conf-keys.md"
  desc_file=workspace-conf-descriptions.json
  [[ -f "$desc_file" ]] || desc_file=/dev/null
  {
    echo "# Databricks \`workspace-conf\` keys (legacy /api/2.0/workspace-conf)"
    echo
    echo "_Auto-generated on $(date -u +%Y-%m-%dT%H:%M:%SZ)._"
    echo "_Discovered against a Databricks host. Some keys may be valid on other tiers but rejected here._"
    echo "_Descriptions are hand-maintained in [\`workspace-conf-descriptions.json\`](workspace-conf-descriptions.json)._"
    echo
    echo "## ✅ Valid keys (HTTP 200)"
    echo
    echo "| Key | Current value | Accepted values | Description |"
    echo "|---|---|---|---|"
    jq -r --slurpfile d "$desc_file" '
      ($d[0] // {}) as $desc |
      .[] | .results[]
      | select((.response.status // 0) == 200 and (.request.url // "") != "")
      | . as $r
      | ($r.request.url | capture("keys=(?<k>[^&]+)").k) as $key
      | ($r.response.data // {}) as $body
      | ($desc[$key] // {}) as $info
      | "| `\($key)` | `\($body[$key] // "-" | tostring)` | \($info.values // "-") | \($info.description // "-" | gsub("\\|"; "\\\\|")) |"
    ' results.json | sort
    echo
    echo "## ❌ Invalid keys (HTTP 400 \"Invalid keys\")"
    echo
    echo "_Likely Premium/Enterprise-tier-only on this workspace, deprecated, or unknown to the API._"
    echo
    echo "| Key | Description |"
    echo "|---|---|"
    jq -r --slurpfile d "$desc_file" '
      ($d[0] // {}) as $desc |
      .[] | .results[]
      | select((.response.status // 0) == 400 and (.request.url // "") != "")
      | (.request.url | capture("keys=(?<k>[^&]+)").k) as $key
      | ($desc[$key] // {}) as $info
      | "| `\($key)` | \($info.description // "-" | gsub("\\|"; "\\\\|")) |"
    ' results.json | sort
    echo
    other=$(jq -r --slurpfile d "$desc_file" '
      ($d[0] // {}) as $desc |
      .[] | .results[]
      | select((.response.status // 0) != 200
            and (.response.status // 0) != 400
            and (.request.url // "") != "")
      | (.request.url | capture("keys=(?<k>[^&]+)").k) as $key
      | ($desc[$key] // {}) as $info
      | "| `\($key)` | \(.response.status) | \($info.description // "-" | gsub("\\|"; "\\\\|")) |"
    ' results.json | sort)
    if [[ -n "$other" ]]; then
      echo "## ⚠️ Other (404/etc.)"
      echo
      echo "| Key | Status | Description |"
      echo "|---|---|---|"
      echo "$other"
    fi
  } > workspace-conf-keys.md
fi

# ── 3. Settings v2 (catalog + probe merged into one table) ──────────────────
echo "→ Generating settings-v2.md"
probe_file=results-v2.json
[[ -f "$probe_file" ]] || probe_file=/dev/null
{
  echo "# Databricks settings v2 (/api/2.1/settings/{name})"
  echo
  echo "_Auto-generated on $(date -u +%Y-%m-%dT%H:%M:%SZ)._"
  echo "_Catalog from \`GET /api/2.1/settings-metadata\`; status column from per-name probe against a Databricks host._"
  echo "_$(jq '.settings_metadata | length' settingsv2-metadata.json) entries. Use with the \`databricks_workspace_setting_v2\` Terraform resource._"
  echo
  echo "Status legend: ✅ 200 set · 🟡 404 recognized but unset · ❌ other failure · - not probed"
  echo
  echo "## Index by preview phase"
  echo
  jq -r '.settings_metadata
    | group_by(.preview_phase // "GA")
    | .[]
    | "- **\(.[0].preview_phase // "GA")**: \(length) settings"' settingsv2-metadata.json
  echo
  echo "## All settings"
  echo
  echo "| Name | Display Name | Phase | Status | Type | Description |"
  echo "|---|---|---|---|---|---|"
  jq -r --slurpfile p "$probe_file" '
    # Build name -> status map from probe results
    ( ($p[0] // [])
      | map(.results // [])
      | add // []
      | map(select((.request.url // "") != ""))
      | map({
          key:   (.request.url | capture("/settings/(?<n>[^?]+)").n),
          value: (.response.status // 0)
        })
      | from_entries
    ) as $status |
    def badge(s):
      if   s == 200 then "✅ 200"
      elif s == 404 then "🟡 404"
      elif s == 0   then "-"
      else "❌ \(s)"
      end;
    .settings_metadata
    | sort_by(.name)
    | .[]
    | . as $m
    | "| `\($m.name)` | \($m.display_name // "-") | \($m.preview_phase // "GA") | \(badge($status[$m.name] // 0)) | `\($m.type | gsub("\\|"; "\\\\|"))` | \((($m.description // "-") | gsub("\n"; " ") | gsub("\\|"; "\\\\|"))) |"
  ' settingsv2-metadata.json
} > settings-v2.md

# Drop the old split files if they still exist from a previous run.
rm -f settings-v2-catalog.md settings-v2-probe.md

echo "✓ Wrote markdown files to repo root"
ls -la *.md
