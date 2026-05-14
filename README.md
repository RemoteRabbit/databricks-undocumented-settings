# databricks-settings-discovery

Tools and reference docs for enumerating valid Databricks workspace settings
across the two parallel APIs:

- **Legacy** - `GET/PATCH /api/2.0/workspace-conf` (string→string map, no metadata endpoint).
- **Settings v2** - `GET/PATCH /api/2.1/settings/{name}` plus `GET /api/2.1/settings-metadata`
  for catalog enumeration. Currently in public preview.

Built around a [Bruno](https://www.usebruno.com) collection in OpenCollection
YAML format. The same collection runs interactively in the Bruno GUI and
non-interactively via the Bruno CLI in CI.

## Layout

```
.
├── .github/workflows/
│   └── refresh-databricks-reference.yml   Weekly cron + manual workflow
├── bruno/                                 OpenCollection root (CLI cwd)
│   ├── opencollection.yml
│   ├── .bruignore
│   ├── environments/
│   │   └── free.yml                       host + token vars (token is a secret)
│   └── workspace-conf/                    Requests
│       ├── Probe-Single-Key.yml           Per-key legacy probe
│       ├── Probe-SettingsV2.yml           Per-name v2 probe
│       └── data/
│           ├── candidates.json            Legacy keys to probe
│           └── settingsv2_candidates.json v2 names to probe (from metadata)
├── scripts/
│   ├── run.sh                             Run probes via Bruno CLI + summarize
│   └── generate-markdown.sh               Regenerate *.md from results
├── workspace-conf-keys.md                 Legacy probe results (auto-generated)
├── settings-v2.md                         v2 catalog + probe status (auto-generated)
├── workspace-conf-descriptions.json       Hand-maintained legacy key docs
└── README.md                              You are here

# Generated locally each run, not committed:
#   results.json results-v2.json settingsv2-metadata.json results*.html
```

## Quick start (local)

```bash
export DATABRICKS_HOST=https://your-workspace.cloud.databricks.com
export DATABRICKS_TOKEN=dapi...     # PAT, or `databricks auth token` output

# Run from the repo root (scripts resolve their own paths, so cwd is flexible):
./scripts/run.sh                 # both probes
./scripts/run.sh legacy          # workspace-conf only
./scripts/run.sh v2              # settingsv2 only
./scripts/generate-markdown.sh   # rebuild *.md at repo root from latest JSON
```

The Bruno CLI is invoked via `npx -y @usebruno/cli`, so no global install is
required. `jq` must be on `$PATH`.

If `DATABRICKS_TOKEN` is unset and the `databricks` CLI is installed, `run.sh`
will call `databricks auth token --host $DATABRICKS_HOST` and use that.

## Quick start (Bruno GUI)

1. Open the repo's `bruno/` directory as a collection.
2. Select the **free** environment, paste your token into the secret field.
3. Use the **Runner** with one of the data files in `bruno/workspace-conf/data/`.

## CI workflow

`.github/workflows/refresh-databricks-reference.yml` runs weekly (Mon 06:00 UTC)
and on demand from the Actions tab. It:

1. Calls `scripts/run.sh all` to refresh `results.json` + `results-v2.json` (at repo root).
2. Calls `scripts/generate-markdown.sh` to refresh `*.md` at the repo root.
3. Commits any changed files back to the default branch.

Required repository secrets:

| Secret              | Purpose                                      |
| ------------------- | -------------------------------------------- |
| `DATABRICKS_HOST`   | e.g. `https://your-workspace.cloud.databricks.com` |
| `DATABRICKS_TOKEN`  | Long-lived PAT (OAuth tokens expire in ~1h) |

## Why two APIs?

`workspace-conf` is the original, undocumented map of legacy admin toggles
(IP access lists, ACLs, security headers, init script policies, etc.). It has
no metadata endpoint, so the only way to discover keys is to probe - that's
what `Probe-Single-Key.yml` plus `data/candidates.json` is for. Hand-maintained
descriptions live in `workspace-conf-descriptions.json` and
get joined into the generated table.

Settings v2 is the replacement: a single generic API that exposes its own
catalog via `/api/2.1/settings-metadata`, returns typed values, and
self-documents. New Databricks toggles (especially Previews) land here. In
Terraform, this surface is wrapped by the single `databricks_workspace_setting_v2`
(workspace) and `databricks_account_setting_v2` (account) resources.

A given workspace's accepted set depends on its tier - Free Edition rejects
most enterprise-tier ACL keys, for example - so probe results are scoped to
whichever workspace you point it at.

## Notes

- The legacy API expects all values as **strings**, even booleans (`"true"`,
  not `true`).
- Bruno marks an iteration "passed" based on tests, not HTTP status. Both
  probe requests include a `tests` block that asserts on status, so the
  Runner shows red ✗ for failed/unexpected statuses.
