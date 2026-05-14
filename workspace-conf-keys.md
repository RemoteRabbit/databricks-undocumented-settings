# Databricks `workspace-conf` keys (legacy /api/2.0/workspace-conf)

_Auto-generated on 2026-05-14T00:03:49Z._
_Discovered against a Databricks host. Some keys may be valid on other tiers but rejected here._
_Descriptions are hand-maintained in [`workspace-conf-descriptions.json`](workspace-conf-descriptions.json)._

## ✅ Valid keys (HTTP 200)

| Key | Current value | Accepted values | Description |
|---|---|---|---|
| `enableDbfsFileBrowser` | `-` | true | false | Enable the DBFS file browser UI in the workspace. |
| `enableDcs` | `-` | true | false | Enable Databricks Container Services for clusters. |
| `enableDeprecatedClusterNamedInitScripts` | `false` | true | false | Enable legacy cluster-named (DBFS) init scripts. |
| `enableDeprecatedGlobalInitScripts` | `false` | true | false | Enable legacy DBFS-based global init scripts (use the global init scripts API instead). |
| `enableExportNotebook` | `-` | true | false | Allow users to export notebooks (HTML/IPYNB/source/DBC). |
| `enableGp3` | `true` | true | false | Use AWS gp3 EBS volumes (instead of gp2) for cluster nodes. |
| `enableJobViewAcls` | `true` | true | false | Hide jobs from users who don't have access (job view ACLs). |
| `enableLibraryAndInitScriptOnSharedCluster` | `-` | true | false | Allow installing libraries and using init scripts on Shared access mode clusters. |
| `enableProjectsAllowList` | `-` | true | false | Enforce the Repos Git URL allow-list (configured via projectsAllowList). |
| `enableResultsDownloading` | `-` | true | false | Allow users to download query/notebook cell results to their local machine. |
| `enableTokensConfig` | `true` | true | false | Enable or disable personal access token (PAT) creation for this workspace. |
| `enableUploadDataUis` | `-` | true | false | Allow the Upload Data UI in the workspace (e.g. importing local files into tables). |
| `enableVerboseAuditLogs` | `-` | true | false | Enable verbose mode for workspace audit logs (more event detail at higher volume). |
| `enableWebTerminal` | `true` | true | false | Enable the Web Terminal in clusters/notebooks. |
| `enableWorkspaceFilesystem` | `true` | true | false | dbr8.4+ | dbr11.0+ | Files in Repos / Workspace Files. Choose minimum DBR version that supports arbitrary file access. |
| `enable-X-Content-Type-Options` | `-` | true | false | Send 'X-Content-Type-Options: nosniff' to disable MIME sniffing. |
| `enable-X-Frame-Options` | `-` | true | false | Send 'X-Frame-Options: sameorigin' to prevent third-party iframing. |
| `enable-X-XSS-Protection` | `-` | true | false | Send 'X-XSS-Protection: 1; mode=block' (legacy browser XSS filter). |
| `enforceWorkspaceViewAcls` | `true` | true | false | Enforce workspace object view ACLs (notebooks/folders/etc.). |
| `maxTokenLifetimeDays` | `730` | integer (1–730) | Maximum lifetime for new PATs, in days. Existing tokens are unaffected. 0 = unlimited (where allowed). |
| `mlflowModelRegistryEmailNotificationsEnabled` | `-` | true | false | Enable email notifications for MLflow Model Registry events. |
| `mlflowModelServingEndpointCreationEnabled` | `-` | true | false | Allow creation of MLflow Model Serving endpoints in this workspace. |
| `projectsAllowList` | `-` | comma-separated URL prefixes | Allow-list of Git URL prefixes that Repos may commit/push to. Empty = block all repos. |
| `storeInteractiveNotebookResultsInCustomerAccount` | `-` | true | false | AWS-only. Store interactive notebook results in the customer's S3 root bucket instead of the Databricks-managed location. |

## ❌ Invalid keys (HTTP 400 "Invalid keys")

_Likely Premium/Enterprise-tier-only on this workspace, deprecated, or unknown to the API._

| Key | Description |
|---|---|
| `enableClusterAcl` | Enable cluster access control. Premium+ tier. |
| `enableHsts` | Send HTTP Strict-Transport-Security headers from the workspace. |
| `enableJobAcl` | Enable job access control. Premium+ tier. |
| `enablePoolAcl` | Enable instance pool access control. Premium+ tier. |
| `enableSafeSparkUi` | Restrict Spark UI access (sanitized view) to limit data exposure. |
| `enableServicePrincipalOauthTokens` | Enable OAuth tokens for service principals. |
| `enableSqlEndpointAcl` | Enable SQL warehouse / endpoint access control. Premium+ tier. |
| `enable-sso-default-link-from-account-console` | Show/use the default SSO link from the account console for this workspace. |
| `enableWorkspaceAcl` | Enable workspace object access control. Premium+ tier. |
| `enforceClusterAcl` | Enforce cluster access control. Premium+ tier. |
| `enforcePoolAcl` | Enforce instance pool access control. Premium+ tier. |
| `enforceWorkspaceAcl` | Enforce workspace object access control. Premium+ tier. |
| `rstudioUserHomeBaseDirectory` | Default base directory for RStudio Server user homes (applies cluster-wide). |

## ⚠️ Other (404/etc.)

| Key | Status | Description |
|---|---|---|
| `enableIpAccessLists` | 404 | Enables the IP access list feature. Required before creating databricks_ip_access_list resources. Premium/Enterprise tier only - on Free Edition the API returns 404 because the feature isn't provisioned, not because the key is invalid. |
