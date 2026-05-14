# Databricks settings v2 (/api/2.1/settings/{name})

_Auto-generated on 2026-05-14T00:17:34Z._
_Catalog from `GET /api/2.1/settings-metadata`; status column from per-name probe against a Databricks host._
_109 entries. Use with the `databricks_workspace_setting_v2` Terraform resource._

Status legend: ✅ 200 set · 🟡 404 recognized but unset · ❌ other failure · - not probed

## Index by preview phase

- **BETA**: 37 settings
- **GA**: 30 settings
- **GA_SOON**: 4 settings
- **PRIVATE_PREVIEW**: 1 settings
- **PUBLIC_PREVIEW**: 37 settings

## Summary

| Name | Phase | Status | Display Name |
|---|---|---|---|
| [`agent_monitoring`](#agent-monitoring) | BETA | ✅ 200 | Production Monitoring for MLflow |
| [`agents_obo`](#agents-obo) | PUBLIC_PREVIEW | ✅ 200 | Agent Framework: On-Behalf-Of-User Authorization |
| [`ai_classify`](#ai-classify) | PUBLIC_PREVIEW | ✅ 200 | AI Classify |
| [`ai_extract`](#ai-extract) | PUBLIC_PREVIEW | ✅ 200 | AI Extract |
| [`ai_parse_document`](#ai-parse-document) | GA | ✅ 200 | AI ParseDocument |
| [`ai_prep_search`](#ai-prep-search) | BETA | 🟡 404 | AI Prep Search |
| [`ai_runtime_beta_features`](#ai-runtime-beta-features) | BETA | 🟡 404 | AI Runtime Beta Features |
| [`air_interactive`](#air-interactive) | BETA | ✅ 200 | Serverless GPU Compute |
| [`alerts_v2`](#alerts-v2) | GA | ✅ 200 | SQL Alerts V2 |
| [`alertv2_job_task`](#alertv2-job-task) | PUBLIC_PREVIEW | ✅ 200 | Alert Job Task |
| [`allowedAppsUserApiScopes`](#allowedappsuserapiscopes) | GA | ✅ 200 | - |
| [`anomaly_detection_ws`](#anomaly-detection-ws) | PUBLIC_PREVIEW | ✅ 200 | Data quality monitoring with anomaly detection (workspace level) |
| [`apps_otel`](#apps-otel) | PUBLIC_PREVIEW | ✅ 200 | OpenTelemetry for Databricks Apps |
| [`apps_v2_ui`](#apps-v2-ui) | GA | 🟡 404 | Databricks Apps V2 |
| [`authoring_context`](#authoring-context) | PUBLIC_PREVIEW | ✅ 200 | Focused notebook & file editor for Git folders |
| [`cld_to_volumes`](#cld-to-volumes) | GA | ✅ 200 | Cluster Log Delivery to UC Volumes |
| [`cloudfiles_excel`](#cloudfiles-excel) | GA | ✅ 200 | Excel File Format Support |
| [`confluence_connector`](#confluence-connector) | GA | ✅ 200 | Lakeflow Connect for Confluence |
| [`conn_cdc_col_select`](#conn-cdc-col-select) | PUBLIC_PREVIEW | ✅ 200 | Lakeflow Connect Column Selection for Database Sources |
| [`custom_apps_preview`](#custom-apps-preview) | GA | ✅ 200 | Databricks Apps |
| [`customerApprovedWSLoginExpirationTime`](#customerapprovedwsloginexpirationtime) | GA | ✅ 200 | - |
| [`dabs_templates`](#dabs-templates) | BETA | ✅ 200 | Custom bundle templates in the workspace |
| [`dabs_visual_edit`](#dabs-visual-edit) | BETA | ✅ 200 | Visual authoring: UI <> YAML Sync for DABs in the Workspace |
| [`dashboard_authoring_agent`](#dashboard-authoring-agent) | PUBLIC_PREVIEW | 🟡 404 | Genie Code for dashboard authoring |
| [`databricks_one`](#databricks-one) | GA | ✅ 200 | Databricks One |
| [`dataclassificationws`](#dataclassificationws) | GA | ✅ 200 | Data Classification |
| [`datascience_agent`](#datascience-agent) | GA | ✅ 200 | Genie Code |
| [`dbsql_5xl_pro`](#dbsql-5xl-pro) | PUBLIC_PREVIEW | ✅ 200 | 5XL PRO SQL Warehouse |
| [`dbsql_5xl_serverless`](#dbsql-5xl-serverless) | PUBLIC_PREVIEW | ✅ 200 | 5XL Serverless SQL Warehouse |
| [`dbt_cloud_task`](#dbt-cloud-task) | BETA | ✅ 200 | dbt platform task |
| [`dc_custom_tags`](#dc-custom-tags) | BETA | 🟡 404 | Extend Data Classification with Custom Classifiers |
| [`default_wh_setting`](#default-wh-setting) | GA | ✅ 200 | Default warehouse setting |
| [`designer`](#designer) | PUBLIC_PREVIEW | ✅ 200 | Lakeflow Designer |
| [`disable_legacy_access`](#disable-legacy-access) | GA | ✅ 200 | - |
| [`disable_legacy_dbfs`](#disable-legacy-dbfs) | GA | ✅ 200 | - |
| [`discover_page`](#discover-page) | BETA | ✅ 200 | Discover Page |
| [`ds_v2_join_pushdown`](#ds-v2-join-pushdown) | PUBLIC_PREVIEW | ✅ 200 | Join Pushdown for Federated Queries |
| [`dynamics_connector`](#dynamics-connector) | PUBLIC_PREVIEW | ✅ 200 | Lakeflow Connect for Dynamics 365 |
| [`embedded_genie`](#embedded-genie) | BETA | 🟡 404 | Embed Genie as an iframe |
| [`enable_dlmv_aibi`](#enable-dlmv-aibi) | PUBLIC_PREVIEW | ✅ 200 | Enable Dashboard Local Metric Views in AI/BI Dashboards |
| [`enable_lakeview_tags`](#enable-lakeview-tags) | PUBLIC_PREVIEW | ✅ 200 | Tagging support for workspace scoped assets |
| [`enable_obo_user_apps`](#enable-obo-user-apps) | GA_SOON | ✅ 200 | Databricks Apps - On-Behalf-Of User Authorization |
| [`enforceGitAppDeployments`](#enforcegitappdeployments) | GA | ✅ 200 | - |
| [`excel_connector_flip`](#excel-connector-flip) | PUBLIC_PREVIEW | 🟡 404 | Excel Add-In |
| [`exp_sp_token_notif`](#exp-sp-token-notif) | BETA | ✅ 200 | Expiring service principal access token notifications |
| [`external_access_to_managed_delta`](#external-access-to-managed-delta) | BETA | 🟡 404 | External Access to Unity Catalog Managed Delta Table |
| [`filebrowser_tree`](#filebrowser-tree) | PUBLIC_PREVIEW | ✅ 200 | Tree view of the side panel file browser |
| [`fmapi_qwen3_instruct`](#fmapi-qwen3-instruct) | PUBLIC_PREVIEW | ✅ 200 | Enable Extended Models (Qwen) |
| [`fstore_decl_fw`](#fstore-decl-fw) | BETA | ✅ 200 | Feature Store Declarative Framework (Batch) |
| [`gdrive_connector`](#gdrive-connector) | BETA | ✅ 200 | Lakeflow Connect for Google Drive |
| [`genie_chat_sharing`](#genie-chat-sharing) | BETA | ✅ 200 | Genie Chat Sharing |
| [`genie_deep_research`](#genie-deep-research) | PUBLIC_PREVIEW | ✅ 200 | Genie Agent |
| [`genie_inspect_answer`](#genie-inspect-answer) | PUBLIC_PREVIEW | ✅ 200 | Genie Answer Inspection |
| [`genie_unstructured_files_in_deepresearch_mode`](#genie-unstructured-files-in-deepresearch-mode) | BETA | 🟡 404 | Upload Local PDFs to Genie Spaces |
| [`google_ads_connector`](#google-ads-connector) | BETA | ✅ 200 | Lakeflow Connect for Google Ads |
| [`hspot_mktg_connector`](#hspot-mktg-connector) | GA | ✅ 200 | Lakeflow Connect for HubSpot |
| [`icebergv3`](#icebergv3) | PUBLIC_PREVIEW | ✅ 200 | Iceberg V3 |
| [`ip_functions`](#ip-functions) | BETA | 🟡 404 | Ip Functions |
| [`jdbc_connector`](#jdbc-connector) | PUBLIC_PREVIEW | ✅ 200 | Custom JDBC on UC Compute |
| [`jira_connector`](#jira-connector) | BETA | ✅ 200 | Lakeflow Connect for Jira |
| [`jobs_disabled_tasks`](#jobs-disabled-tasks) | GA | ✅ 200 | Disabled tasks in Lakeflow Jobs |
| [`jobs_serverless_managed_base_environments`](#jobs-serverless-managed-base-environments) | BETA | 🟡 404 | Serverless workspace base environment support in Jobs |
| [`lakebase_accel_sync`](#lakebase-accel-sync) | PRIVATE_PREVIEW | ✅ 200 | Lakebase Accelerated Sync |
| [`lakebase_cdf`](#lakebase-cdf) | PUBLIC_PREVIEW | ✅ 200 | Lakehouse Sync |
| [`lakebase_otel_integration`](#lakebase-otel-integration) | BETA | 🟡 404 | Lakebase OpenTelemetry Integration |
| [`lakeflow_new_jobs_ui`](#lakeflow-new-jobs-ui) | GA | ✅ 200 | Lakeflow Jobs UI |
| [`lakeflow_qbc`](#lakeflow-qbc) | PUBLIC_PREVIEW | ✅ 200 | Lakeflow Connect Query Based Connectors |
| [`lakeflow_runs_list`](#lakeflow-runs-list) | PUBLIC_PREVIEW | ✅ 200 | Unified Runs List |
| [`lf_pipelines_auth`](#lf-pipelines-auth) | PUBLIC_PREVIEW | ✅ 200 | Lakeflow Pipelines Editor |
| [`llm_proxy_partner_powered`](#llm-proxy-partner-powered) | GA | ✅ 200 | - |
| [`managed_mcp_servers`](#managed-mcp-servers) | PUBLIC_PREVIEW | ✅ 200 | Managed MCP Servers |
| [`meta_ads_connector`](#meta-ads-connector) | BETA | ✅ 200 | Lakeflow Connect for Meta Ads |
| [`mlflow_logged_models`](#mlflow-logged-models) | PUBLIC_PREVIEW | ✅ 200 | Models in Unity Catalog: Deployment Jobs |
| [`mst`](#mst) | PUBLIC_PREVIEW | ✅ 200 | Transactions |
| [`multiple_git_creds`](#multiple-git-creds) | GA | ✅ 200 | Multiple Git Credentials |
| [`new_policy_form`](#new-policy-form) | GA | ✅ 200 | New compute policy form |
| [`oltp_database`](#oltp-database) | GA | ✅ 200 | Lakebase Postgres |
| [`one_chat`](#one-chat) | PUBLIC_PREVIEW | ✅ 200 | New chat experience in Genie |
| [`otel_collector`](#otel-collector) | PUBLIC_PREVIEW | ✅ 200 | OpenTelemetry on Databricks |
| [`otel_model_serving`](#otel-model-serving) | BETA | ✅ 200 | OpenTelemetry for Databricks Model Serving |
| [`pkg_repo_api_cluster`](#pkg-repo-api-cluster) | GA_SOON | ✅ 200 | Default Python package repositories in clusters created via API |
| [`pkg_repo_dlt`](#pkg-repo-dlt) | GA_SOON | ✅ 200 | Default Python package repositories in Spark Declarative Pipelines |
| [`pkg_repo_ui_cluster`](#pkg-repo-ui-cluster) | GA_SOON | ✅ 200 | Default Python package repositories in clusters created via UI |
| [`power_bi_task`](#power-bi-task) | PUBLIC_PREVIEW | ✅ 200 | Power BI task type |
| [`remote_query_tvf`](#remote-query-tvf) | PUBLIC_PREVIEW | ✅ 200 | Enables remote query table-valued function (remote_query). |
| [`scoped_pat`](#scoped-pat) | GA | ✅ 200 | Scoped personal access tokens |
| [`serverless_jar_jobs`](#serverless-jar-jobs) | PUBLIC_PREVIEW | ✅ 200 | Serverless JARs |
| [`sfdc_file_sharing`](#sfdc-file-sharing) | GA | ✅ 200 | Salesforce Data Cloud file sharing federation |
| [`sftp_connector`](#sftp-connector) | PUBLIC_PREVIEW | ✅ 200 | SFTP Connector |
| [`sharepoint_connector`](#sharepoint-connector) | BETA | ✅ 200 | Lakeflow Connect for Sharepoint |
| [`sql_cond_triggers`](#sql-cond-triggers) | GA | 🟡 404 | - |
| [`standalone_mv_st_on_serverless_gc`](#standalone-mv-st-on-serverless-gc) | BETA | 🟡 404 | MV and ST in Serverless Notebooks and Jobs |
| [`supervisor_api`](#supervisor-api) | BETA | 🟡 404 | Supervisor API |
| [`system_managed_job`](#system-managed-job) | BETA | ✅ 200 | System-Managed Job for Materialized Views & Streaming Tables |
| [`tabular_subscription_attachments`](#tabular-subscription-attachments) | GA | 🟡 404 | Widget Data Attachments for Dashboard Subscriptions |
| [`third_party_agent_connectors`](#third-party-agent-connectors) | BETA | 🟡 404 | Third Party Connectors for Agents |
| [`tiktok_ads_connector`](#tiktok-ads-connector) | BETA | ✅ 200 | Lakeflow Connect for TikTok Ads |
| [`tiles_platform`](#tiles-platform) | BETA | ✅ 200 | Mosaic AI Agent Bricks Preview |
| [`ucmr_prompt_registry`](#ucmr-prompt-registry) | BETA | ✅ 200 | Managed MLflow Prompt Registry |
| [`variant_shredding`](#variant-shredding) | BETA | ✅ 200 | Variant Shredding for Optimized Read Performance on Semi-Structured Data |
| [`vector_search_rerank`](#vector-search-rerank) | GA | ✅ 200 | Vector Search Reranker |
| [`vectorsearch_highqps`](#vectorsearch-highqps) | PUBLIC_PREVIEW | ✅ 200 | Vector Search High QPS |
| [`vs_autoeval`](#vs-autoeval) | BETA | 🟡 404 | Vector Search AutoEval |
| [`vs_full_text`](#vs-full-text) | BETA | ✅ 200 | Vector Search Full Text |
| [`wday_hcm_connector`](#wday-hcm-connector) | BETA | ✅ 200 | Lakeflow Connect for Workday HCM |
| [`wh_activity_details`](#wh-activity-details) | BETA | ✅ 200 | Warehouse Activity Details |
| [`wsfs_git_cli`](#wsfs-git-cli) | BETA | ✅ 200 | Git CLI support for Git folders |
| [`zdesk_supt_connector`](#zdesk-supt-connector) | GA | ✅ 200 | Lakeflow Connect for Zendesk Support |
| [`zerobus_ingest_core`](#zerobus-ingest-core) | GA | ✅ 200 | Lakeflow Connect Zerobus Ingest |

## Details

### `agent_monitoring`

- **Display name:** Production Monitoring for MLflow
- **Phase:** BETA
- **Status:** ✅ 200

This beta enables monitoring of any Generative AI app or agent deployed outside of Databricks OR on Databricks using MLflow 3.0. It provides developers with tools to track both performance metrics (latency, request volume, errors) and quality metrics (accuracy, correctness, compliance), allowing them to detect drift or regressions via LLM-based evaluations on production traffic. Developers can also deep dive into individual requests for debugging and improvement purposes, and export real-world logs into evaluation sets to drive continuous enhancements of their Generative AI applications.

```json
{"boolean_val": {"value": true}}
```

### `agents_obo`

- **Display name:** Agent Framework: On-Behalf-Of-User Authorization
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

This feature enables on-behalf-of-user authentication for generative AI agents deployed to Model Serving via Mosaic AI Agent Framework. When you deploy an agent to Model Serving that performs on-behalf of end user access using Mosaic AI agent framework, the agent will be able to access Databricks resources using the identity of the agent invoker.

```json
{"boolean_val": {"value": true}}
```

### `ai_classify`

- **Display name:** AI Classify
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

The ai_classify() function enables you to classify input text directly in SQL using state-of-the-art generative AI models provided by Databricks Foundation Model APIs. By supplying a set of labels, you can declaratively assign categories to unstructured text.

```json
{"boolean_val": {"value": true}}
```

### `ai_extract`

- **Display name:** AI Extract
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

The ai_extract() function enables you to extract structured entities from unstructured text directly in SQL using state-of-the-art generative AI models provided by Databricks Foundation Model APIs. After specifying a target schema, you can declaratively transform raw text into structured outputs.

```json
{"boolean_val": {"value": true}}
```

### `ai_parse_document`

- **Display name:** AI ParseDocument
- **Phase:** GA
- **Status:** ✅ 200

The ai_parse_document() function invokes a state-of-the-art generative AI model from Databricks Foundation Model APIs to extract structured content from unstructured documents.

```json
{"boolean_val": {"value": true}}
```

### `ai_prep_search`

- **Display name:** AI Prep Search
- **Phase:** BETA
- **Status:** 🟡 404

The ai_prep_search() function enables you to transform the output of ai_parse_document into a format optimized for vector search and information retrieval systems.

```json
{"boolean_val": {"value": true}}
```

### `ai_runtime_beta_features`

- **Display name:** AI Runtime Beta Features
- **Phase:** BETA
- **Status:** 🟡 404

This preview allows users to use AI Runtime Beta features in their workspaces.

```json
{"boolean_val": {"value": true}}
```

### `air_interactive`

- **Display name:** Serverless GPU Compute
- **Phase:** BETA
- **Status:** ✅ 200

Serverless GPU compute provides access to GPU compute (e.g A10 GPUs) via serverless. Users can, within the environment panel, select an accelerator to run notebook workloads like model training and finetuning without having to provision or manage infrastructure, streamlining development and training of models.

```json
{"boolean_val": {"value": true}}
```

### `alerts_v2`

- **Display name:** SQL Alerts V2
- **Phase:** GA
- **Status:** ✅ 200

The next generation of Databricks SQL Alerts - with a revamped user interface, a simplified data model, evaluation history, and improved API support.

```json
{"boolean_val": {"value": true}}
```

### `alertv2_job_task`

- **Display name:** Alert Job Task
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

User can select Alert as a primary job task type.

```json
{"boolean_val": {"value": true}}
```

### `allowedAppsUserApiScopes`

- **Display name:** -
- **Phase:** GA
- **Status:** ✅ 200

Restrict which OAuth scopes app developers can request when acting on behalf of users. Specify a list of allowed scopes, or use "*" to allow all supported scopes. An empty list effectively disables user authorization for apps.

```json
{"allowed_scopes": ["sample_string"]}
```

### `anomaly_detection_ws`

- **Display name:** Data quality monitoring with anomaly detection (workspace level)
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

This feature allows you to be alerted on data quality anomalies (e.g. freshness, completeness) for your tables. By learning the behaviors of each table and intelligently setting thresholds, the feature allows you to easily alert on data quality incidents across all your important tables. Currently, the feature is limited to freshness monitoring and is a library you call in a notebook, but will soon also include completeness (row count) monitoring. The table health information will also be published in Unity Catalog so data consumers know if a table has an ongoing data quality incident.

```json
{"boolean_val": {"value": true}}
```

### `apps_otel`

- **Display name:** OpenTelemetry for Databricks Apps
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enables observability features for Databricks Apps.

```json
{"boolean_val": {"value": true}}
```

### `apps_v2_ui`

- **Display name:** Databricks Apps V2
- **Phase:** GA
- **Status:** 🟡 404

Enables the standalone Databricks Apps V2 UI experience with dedicated app management pages.

```json
{"boolean_val": {"value": true}}
```

### `authoring_context`

- **Display name:** Focused notebook & file editor for Git folders
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Similar to opening a folder in an IDE, you can now set the scope of the notebook and file editor to a specific Git folder. When the scope is set to a Git folder, the side panel displays that folder’s contents as an expandable tree, and the editor’s tab bar displays only the files, notebooks, and queries opened while the scope is set to that folder.

```json
{"boolean_val": {"value": true}}
```

### `cld_to_volumes`

- **Display name:** Cluster Log Delivery to UC Volumes
- **Phase:** GA
- **Status:** ✅ 200

Allows users to configure a classic compute cluster’s cluster log delivery to a UC volume path through UI or API. Cluster logs for the Spark driver node, worker nodes and events will be delivered to the configured volume path.

```json
{"boolean_val": {"value": true}}
```

### `cloudfiles_excel`

- **Display name:** Excel File Format Support
- **Phase:** GA
- **Status:** ✅ 200

Read Excel files using Spark batch and streaming APIs including Auto Loader, read_files, spark.read and COPY INTO. Available in DBR17.1+

```json
{"boolean_val": {"value": true}}
```

### `confluence_connector`

- **Display name:** Lakeflow Connect for Confluence
- **Phase:** GA
- **Status:** ✅ 200

Ingest from Confluence with a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `conn_cdc_col_select`

- **Display name:** Lakeflow Connect Column Selection for Database Sources
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enable column selection for Lakeflow Connects SQL Server connector. Available only via API.

```json
{"boolean_val": {"value": true}}
```

### `custom_apps_preview`

- **Display name:** Databricks Apps
- **Phase:** GA
- **Status:** ✅ 200

Databricks Apps is the fastest way for data developers to build secure and governed apps for internal use.

```json
{"boolean_val": {"value": true}}
```

### `customerApprovedWSLoginExpirationTime`

- **Display name:** -
- **Phase:** GA
- **Status:** ✅ 200

Enable and disable access to your workspace to Databricks personnel. You can control when and how long Databricks can access your workspace for support purposes. If you have disabled access, no Databricks personnel will be able to gain access to your workspace. Accepted string values are - '', 'indefinite' or valid ISO date

```json
{"string_val": {"value": "string"}}
```

### `dabs_templates`

- **Display name:** Custom bundle templates in the workspace
- **Phase:** BETA
- **Status:** ✅ 200

This preview enables admins to set up custom templates that users can use to get started with asset bundles directly in the Workspace. It allows CI/CD stakeholders to enforce best practices and standardized formats, helping users skip repetitive setup and launch projects faster.

```json
{"boolean_val": {"value": true}}
```

### `dabs_visual_edit`

- **Display name:** Visual authoring: UI <> YAML Sync for DABs in the Workspace
- **Phase:** BETA
- **Status:** ✅ 200

This preview enables users to edit resources (Jobs, Pipelines) in the UI and have YAML automatically sync when using Databricks Asset Bundles in the Workspace. Users can set up their resources for CI/CD without explicit knowledge of asset bundles.

```json
{"boolean_val": {"value": true}}
```

### `dashboard_authoring_agent`

- **Display name:** Genie Code for dashboard authoring
- **Phase:** PUBLIC_PREVIEW
- **Status:** 🟡 404

Enables Genie Code to create and edit AI/BI Dashboards by delegating complex tasks like visualization generation, filter configuration, and layout organization

```json
{"boolean_val": {"value": true}}
```

### `databricks_one`

- **Display name:** Databricks One
- **Phase:** GA
- **Status:** ✅ 200

Enables the Databricks One business user experience for Consumer entitled users in the Workspace.

```json
{"boolean_val": {"value": true}}
```

### `dataclassificationws`

- **Display name:** Data Classification
- **Phase:** GA
- **Status:** ✅ 200

This feature allows you to classify and review sensitive data across your entire catalog, powered by agents.

```json
{"boolean_val": {"value": true}}
```

### `datascience_agent`

- **Display name:** Genie Code
- **Phase:** GA
- **Status:** ✅ 200

Genie Code can automate multiple steps. From a single prompt, it can retrieve relevant assets, generate and run code, fix errors automatically, and visualize results. It can sample data and cell outputs to provide better results.

```json
{"boolean_val": {"value": true}}
```

### `dbsql_5xl_pro`

- **Display name:** 5XL PRO SQL Warehouse
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enable 5X-Large endpoint size for Pro SQL warehouses

```json
{"boolean_val": {"value": true}}
```

### `dbsql_5xl_serverless`

- **Display name:** 5XL Serverless SQL Warehouse
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enable 5X-Large endpoint size for Serverless SQL Warehouses

```json
{"boolean_val": {"value": true}}
```

### `dbt_cloud_task`

- **Display name:** dbt platform task
- **Phase:** BETA
- **Status:** ✅ 200

The dbt platform task lets you run your dbt platform jobs as part of existing databricks workflows

```json
{"boolean_val": {"value": true}}
```

### `dc_custom_tags`

- **Display name:** Extend Data Classification with Custom Classifiers
- **Phase:** BETA
- **Status:** 🟡 404

Automatically detect custom/business-specific tags beyond Data Classification’s supported set.

```json
{"boolean_val": {"value": true}}
```

### `default_wh_setting`

- **Display name:** Default warehouse setting
- **Phase:** GA
- **Status:** ✅ 200

The default warehouse feature allows Databricks workspace admins to define a default SQL warehouse that is pre-selected for users across SQL authoring surfaces, including Catalog Explorer, SQL Editor, Dashboards, Alerts, and Genie. Users can optionally override this default to set a customer default warehouse for themselves.

```json
{"boolean_val": {"value": true}}
```

### `designer`

- **Display name:** Lakeflow Designer
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Allows users to use Lakeflow Designer, a low-code, fully governed, AI-native tool for data transformations.

```json
{"boolean_val": {"value": true}}
```

### `disable_legacy_access`

- **Display name:** -
- **Phase:** GA
- **Status:** ✅ 200

'Disabling legacy access' has the following impacts: 1. Disables direct access to Hive Metastores from the workspace (access through Hive Metastore federation is unaffected). 2. Disables fallback mode on external location access from the workspace. 3. Disables Databricks Runtime versions prior to 13.3LTS. Important: this setting cannot be enabled while the workspace default catalog is set to a legacy catalog (hive_metastore or spark_catalog). Change the default catalog to a Unity Catalog catalog first.

```json
{"boolean_val": {"value": true}}
```

### `disable_legacy_dbfs`

- **Display name:** -
- **Phase:** GA
- **Status:** ✅ 200

Disabling legacy DBFS has the following two implications: 1. Access to DBFS root and DBFS mounts is disallowed (as well as the creation of new mounts). 2. Disables Databricks Runtime versions prior to 13.3LTS. When the setting is off, all DBFS functionality is enabled and no restrictions are imposed on Databricks Runtime versions. This setting can take up to 20 minutes to take effect and requires a manual restart of all-purpose compute clusters and SQL warehouses.

```json
{"boolean_val": {"value": true}}
```

### `discover_page`

- **Display name:** Discover Page
- **Phase:** BETA
- **Status:** ✅ 200

Enables the Discover Page in the left nav and the search empty state for this workspace. The Discover Page is a curated, user-friendly interface that helps users find and understand their organizations most important UC and workspace assets. Note: The account-level Domain and Discover flag must also be enabled for the Discover Page to appear in the local workspace.

```json
{"boolean_val": {"value": true}}
```

### `ds_v2_join_pushdown`

- **Display name:** Join Pushdown for Federated Queries
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enables automatic pushdown of join operations to remote databases when executing federated queries through Lakehouse Federation. When enabled, Databricks pushes inner, left, and right joins between tables from the same JDBC datasource (Oracle, PostgreSQL, MySQL, SQL Server, Teradata) directly to the remote database engine, reducing data transfer and improving query performance. This feature is available on Databricks Runtime 17.2 and above.

```json
{"boolean_val": {"value": true}}
```

### `dynamics_connector`

- **Display name:** Lakeflow Connect for Dynamics 365
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Ingest Dynamics 365 data via Dataverse with a simple and efficient connector. Available via API or UI.

```json
{"boolean_val": {"value": true}}
```

### `embedded_genie`

- **Display name:** Embed Genie as an iframe
- **Phase:** BETA
- **Status:** 🟡 404

This feature allows Genie space authors to embed Genie spaces into external applications. Users in the external application must have access to Databricks and the Genie space.

```json
{"boolean_val": {"value": true}}
```

### `enable_dlmv_aibi`

- **Display name:** Enable Dashboard Local Metric Views in AI/BI Dashboards
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Create Metric Views that are local to an Ai/BI dashboard. These Dashboard Local Metric Views are created as datasets.

```json
{"boolean_val": {"value": true}}
```

### `enable_lakeview_tags`

- **Display name:** Tagging support for workspace scoped assets
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enable tags for new workspace scoped assets including lakeview dashboards and genie spaces. Users with edit level or above permissions can add and modify tags on the asset

```json
{"boolean_val": {"value": true}}
```

### `enable_obo_user_apps`

- **Display name:** Databricks Apps - On-Behalf-Of User Authorization
- **Phase:** GA_SOON
- **Status:** ✅ 200

Allows the Databricks App to act on behalf of the app user. This enhancement allows the app to honor the user's access permissions defined in Unity Catalog and in Databricks Workspace.

```json
{"boolean_val": {"value": true}}
```

### `enforceGitAppDeployments`

- **Display name:** -
- **Phase:** GA
- **Status:** ✅ 200

When enabled, apps in this workspace can only be deployed from Git.

```json
{"boolean_val": {"value": true}}
```

### `excel_connector_flip`

- **Display name:** Excel Add-In
- **Phase:** PUBLIC_PREVIEW
- **Status:** 🟡 404

Enable the Databricks Add-In for Excel to import data from Databricks into Excel

```json
{"boolean_val": {"value": true}}
```

### `exp_sp_token_notif`

- **Display name:** Expiring service principal access token notifications
- **Phase:** BETA
- **Status:** ✅ 200

Enable automatic email notifications for service principal owned expiring personal access tokens. When enabled, this feature proactively monitors service principal access tokens in your workspace and sends email notifications to workspace admins before their tokens expire, helping prevent service disruptions and authentication failures.

```json
{"boolean_val": {"value": true}}
```

### `external_access_to_managed_delta`

- **Display name:** External Access to Unity Catalog Managed Delta Table
- **Phase:** BETA
- **Status:** 🟡 404

External Access to Unity Catalog Managed Delta Tables lets external engines like Apache Spark, Trino, and other Delta clients securely create, read and write Unity Catalog-managed Delta tables using Databricks open APIs and short-lived, UC-governed credentials.

```json
{"boolean_val": {"value": true}}
```

### `filebrowser_tree`

- **Display name:** Tree view of the side panel file browser
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

The file browser in the editor’s side panel now supports a tree view, allowing you to expand multiple folders at once and quickly navigate between files across directories without backtracking.

```json
{"boolean_val": {"value": true}}
```

### `fmapi_qwen3_instruct`

- **Display name:** Enable Extended Models (Qwen)
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

This preview enables an extended family of models, specifically Qwen, in model serving.

```json
{"boolean_val": {"value": true}}
```

### `fstore_decl_fw`

- **Display name:** Feature Store Declarative Framework (Batch)
- **Phase:** BETA
- **Status:** ✅ 200

Opt in to the new declarative framework for defining batch features in Databricks Feature Store. You can still use the legacy feature table pipelines alongside the new framework. Note: This preview currently supports batch features only; streaming features will be available in a separate preview.

```json
{"boolean_val": {"value": true}}
```

### `gdrive_connector`

- **Display name:** Lakeflow Connect for Google Drive
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from Google Drive with a simple and efficient connector. **Requires DBR 17.3+**

```json
{"boolean_val": {"value": true}}
```

### `genie_chat_sharing`

- **Display name:** Genie Chat Sharing
- **Phase:** BETA
- **Status:** ✅ 200

Share Genie space chats with space managers by default, and allow users to share their chats with others in the Databricks account.

```json
{"boolean_val": {"value": true}}
```

### `genie_deep_research`

- **Display name:** Genie Agent
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

The Genie Agent provides deeper data insights and answers complex business questions using multi-step reasoning and hypothesis investigation.

```json
{"boolean_val": {"value": true}}
```

### `genie_inspect_answer`

- **Display name:** Genie Answer Inspection
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Advanced technique that reviews initial SQL answers and makes improvements in standard Genie

```json
{"boolean_val": {"value": true}}
```

### `genie_unstructured_files_in_deepresearch_mode`

- **Display name:** Upload Local PDFs to Genie Spaces
- **Phase:** BETA
- **Status:** 🟡 404

Enables users to upload local PDFs as conversation-level context in Agent mode

```json
{"boolean_val": {"value": true}}
```

### `google_ads_connector`

- **Display name:** Lakeflow Connect for Google Ads
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from Google Ads with a simple and efficient connector.

```json
{"boolean_val": {"value": true}}
```

### `hspot_mktg_connector`

- **Display name:** Lakeflow Connect for HubSpot
- **Phase:** GA
- **Status:** ✅ 200

Ingest from HubSpot with a simple and efficient connector.

```json
{"boolean_val": {"value": true}}
```

### `icebergv3`

- **Display name:** Iceberg V3
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Iceberg V3 adds performance and feature capabilities to Delta UniForm and Managed Iceberg tables. These features include deletion vectors for efficient row-level deletes, row lineage for incremental processing, and the Variant data type for semi-structured data.

```json
{"boolean_val": {"value": true}}
```

### `ip_functions`

- **Display name:** Ip Functions
- **Phase:** BETA
- **Status:** 🟡 404

Ip Functions feature preview enables built-in functions for working with IP addresses and CIDR blocks. Requires DBR 18.2 or later.

```json
{"boolean_val": {"value": true}}
```

### `jdbc_connector`

- **Display name:** Custom JDBC on UC Compute
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

This feature enables users to connect to data sources using a custom JDBC driver through the Spark Data Source API. The new UC Connection of type JDBC, runs a user-provided JDBC driver powered by Lakeguard isolation on UC-supported compute: serverless, standard, and dedicated clusters with DBR 18.1 or higher.

```json
{"boolean_val": {"value": true}}
```

### `jira_connector`

- **Display name:** Lakeflow Connect for Jira
- **Phase:** BETA
- **Status:** ✅ 200

Ingest Jira data with a simple and efficient connector. Available via API for both Jira Cloud and on premise instances.

```json
{"boolean_val": {"value": true}}
```

### `jobs_disabled_tasks`

- **Display name:** Disabled tasks in Lakeflow Jobs
- **Phase:** GA
- **Status:** ✅ 200

Be able to disable tasks in Lakeflow Jobs. By disabling a task, Lakeflow Jobs will not run that task in subsequent runs until you re-enable it.

```json
{"boolean_val": {"value": true}}
```

### `jobs_serverless_managed_base_environments`

- **Display name:** Serverless workspace base environment support in Jobs
- **Phase:** BETA
- **Status:** 🟡 404

Enable serverless workspace base environment support for Notebook, Python Script, and Wheel tasks in Jobs

```json
{"boolean_val": {"value": true}}
```

### `lakebase_accel_sync`

- **Display name:** Lakebase Accelerated Sync
- **Phase:** PRIVATE_PREVIEW
- **Status:** ✅ 200

Uses parallelized load directly into object storage for faster initial load and refresh.

```json
{"boolean_val": {"value": true}}
```

### `lakebase_cdf`

- **Display name:** Lakehouse Sync
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Lakebase-native export of the Postgres Change Data Feed to Delta tables. Supports scale to zero with Lakebase Autoscaling.

```json
{"boolean_val": {"value": true}}
```

### `lakebase_otel_integration`

- **Display name:** Lakebase OpenTelemetry Integration
- **Phase:** BETA
- **Status:** 🟡 404

Enables OpenTelemetry integration for Lakebase, allowing export of telemetry data to external observability platforms.

```json
{"boolean_val": {"value": true}}
```

### `lakeflow_new_jobs_ui`

- **Display name:** Lakeflow Jobs UI
- **Phase:** GA
- **Status:** ✅ 200

The new Lakeflow Jobs UI features a streamlined layout, redesigned task palette, and a cleaner empty state canvas for a faster, more focused experience. To enable it, open any job and switch on the toggle on the top of the page, you can opt-out at any time

```json
{"boolean_val": {"value": true}}
```

### `lakeflow_qbc`

- **Display name:** Lakeflow Connect Query Based Connectors
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enable Lakeflow Connect query based connectors to ingest from Lakehouse federation sources.

```json
{"boolean_val": {"value": true}}
```

### `lakeflow_runs_list`

- **Display name:** Unified Runs List
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

You can now view all of your Jobs and Pipeline executions in the updated Runs list. Track all of your pipeline executions in one place and filter by status, time, run-as user, and error codes in real time. Spot trends using the visualization and summary of the current top five error codes.

```json
{"boolean_val": {"value": true}}
```

### `lf_pipelines_auth`

- **Display name:** Lakeflow Pipelines Editor
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Purpose-built IDE for declarative data pipelines. Designed to support everything you need for building pipelines in one place: code-first authoring, folder-based organization, selective execution, data previews, and pipeline graphs. Integrated with the Databricks Platform, supporting version control, code reviews, and scheduling.

```json
{"boolean_val": {"value": true}}
```

### `llm_proxy_partner_powered`

- **Display name:** -
- **Phase:** GA
- **Status:** ✅ 200

Determines if partner powered models are enabled or not. This setting is available at both account and workspace level

```json
{"boolean_val": {"value": true}}
```

### `managed_mcp_servers`

- **Display name:** Managed MCP Servers
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Databricks managed MCP (Model Context Protocol) servers enable your AI agents to access data and tools governed in Databricks, with data governance and permissions enforced out of the box

```json
{"boolean_val": {"value": true}}
```

### `meta_ads_connector`

- **Display name:** Lakeflow Connect for Meta Ads
- **Phase:** BETA
- **Status:** ✅ 200

Ingest Meta Ads data with a simple and efficient connector.

```json
{"boolean_val": {"value": true}}
```

### `mlflow_logged_models`

- **Display name:** Models in Unity Catalog: Deployment Jobs
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Deployment jobs allow you to manage the model lifecycle by automating tasks like evaluation, approval, and deployment whenever a new model version is created, integrating seamlessly with Unity Catalog models and Databricks Jobs. These jobs simplify the setup of model deployment pipelines, incorporate human-in-the-loop approvals, and provide governed workflows with clear visibility into progress and historical context for each model version.

```json
{"boolean_val": {"value": true}}
```

### `mst`

- **Display name:** Transactions
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Run multiple SQL statements across multiple Delta and Iceberg tables as a single, atomic transaction with full ACID guarantees. All changes succeed or roll back together, ensuring data consistency across your operations.

```json
{"boolean_val": {"value": true}}
```

### `multiple_git_creds`

- **Display name:** Multiple Git Credentials
- **Phase:** GA
- **Status:** ✅ 200

Ability to create and use multiple Git credentials per user for Git folders

```json
{"boolean_val": {"value": true}}
```

### `new_policy_form`

- **Display name:** New compute policy form
- **Phase:** GA
- **Status:** ✅ 200

This preview enables a new and improved user interface for creating, editing and viewing compute policies. Non-admin users are now able to view compute policies they are assigned to.

```json
{"boolean_val": {"value": true}}
```

### `oltp_database`

- **Display name:** Lakebase Postgres
- **Phase:** GA
- **Status:** ✅ 200

A new Postgres compute type built for low-latency reads and writes. Autoscaling offers autoscaling compute, branching, instance restore, and more, while Provisioned provides high availability (HA) and integration with Databricks Apps.

```json
{"boolean_val": {"value": true}}
```

### `one_chat`

- **Display name:** New chat experience in Genie
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Chat with Databricks agents and third-party data sources from a single conversation in Genie, governed by Unity Catalog.

```json
{"boolean_val": {"value": true}}
```

### `otel_collector`

- **Display name:** OpenTelemetry on Databricks
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enables ingestion of OpenTelemetry data into Unity Catalog managed Delta tables for MLflow Tracing.

```json
{"boolean_val": {"value": true}}
```

### `otel_model_serving`

- **Display name:** OpenTelemetry for Databricks Model Serving
- **Phase:** BETA
- **Status:** ✅ 200

OpenTelemetry log/span/metric persistence for model serving endpoints.

```json
{"boolean_val": {"value": true}}
```

### `pkg_repo_api_cluster`

- **Display name:** Default Python package repositories in clusters created via API
- **Phase:** GA_SOON
- **Status:** ✅ 200

Apply the default Python package repositories in clusters created via API. The changes of configurations apply to newly created clusters and existing clusters upon restart.

```json
{"boolean_val": {"value": true}}
```

### `pkg_repo_dlt`

- **Display name:** Default Python package repositories in Spark Declarative Pipelines
- **Phase:** GA_SOON
- **Status:** ✅ 200

Default Python package repositories in serverless and classic Spark Declarative Pipelines (SDP). The changes of configurations apply to new pipeline runs.

```json
{"boolean_val": {"value": true}}
```

### `pkg_repo_ui_cluster`

- **Display name:** Default Python package repositories in clusters created via UI
- **Phase:** GA_SOON
- **Status:** ✅ 200

Apply the default Python package repositories in clusters created via UI. The changes of configurations apply to newly created clusters and existing clusters upon restart.

```json
{"boolean_val": {"value": true}}
```

### `power_bi_task`

- **Display name:** Power BI task type
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

The Power BI task type in Databricks Workflows allows users to keep Power BI semantic models up-to-date with source data in Unity Catalog. The task can sync table metadata, evolving schemas, and primary/foreign key relationships. It works for DirectQuery and Import mode at the table level, allowing you to define composite models.

```json
{"boolean_val": {"value": true}}
```

### `remote_query_tvf`

- **Display name:** Enables remote query table-valued function (remote_query).
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Function allows users to execute query in remote engine syntax using credentials from a Unity Catalog connection. Function is available on Databricks Runtime 17.3 or above.

```json
{"boolean_val": {"value": true}}
```

### `scoped_pat`

- **Display name:** Scoped personal access tokens
- **Phase:** GA
- **Status:** ✅ 200

Scoped personal access tokens (Scoped PATs) limit which APIs each token can call through specific scopes that define its permissions. The feature helps enforce least-privilege access and reduces risk if a token is compromised. You can configure scopes individually on each token and update them at any time to match the token's intended use—such as connecting BI tools, or running automation scripts.

```json
{"boolean_val": {"value": true}}
```

### `serverless_jar_jobs`

- **Display name:** Serverless JARs
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Deploy Scala and Java jobs as Jars on serverless compute with faster startup, auto-scaling, and no cluster management

```json
{"boolean_val": {"value": true}}
```

### `sfdc_file_sharing`

- **Display name:** Salesforce Data Cloud file sharing federation
- **Phase:** GA
- **Status:** ✅ 200

Query data from Salesforce Data Cloud using the zero-copy direct file access approach.

```json
{"boolean_val": {"value": true}}
```

### `sftp_connector`

- **Display name:** SFTP Connector
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Ingest files from SFTP server using Auto Loader. Requires DBR 17.3+.

```json
{"boolean_val": {"value": true}}
```

### `sharepoint_connector`

- **Display name:** Lakeflow Connect for Sharepoint
- **Phase:** BETA
- **Status:** ✅ 200

Ingest Sharepoint data with a simple and efficient connector. Available via API.

```json
{"boolean_val": {"value": true}}
```

### `sql_cond_triggers`

- **Display name:** -
- **Phase:** GA
- **Status:** 🟡 404

Controls whether users within the workspace are allowed to configure SQL conditions for triggers. This feature helps users to trigger job runs when business conditions are met and improves observability. By default, this setting is disabled (set to `false`)

```json
{"boolean_val": {"value": true}}
```

### `standalone_mv_st_on_serverless_gc`

- **Display name:** MV and ST in Serverless Notebooks and Jobs
- **Phase:** BETA
- **Status:** 🟡 404

Feature preview to enable creating and refreshing SDP Materialized Views and Streaming Tables in Serverless Notebooks and Jobs using Serverless Generic Compute. 

```json
{"boolean_val": {"value": true}}
```

### `supervisor_api`

- **Display name:** Supervisor API
- **Phase:** BETA
- **Status:** 🟡 404

The Supervisor API lets you build custom agents on Databricks with a single request. You specify the model, tools, and instructions, and Databricks runs the agent loop for you by calling the model, executing tools, and producing the final response, with support for background mode for long-running tasks.

```json
{"boolean_val": {"value": true}}
```

### `system_managed_job`

- **Display name:** System-Managed Job for Materialized Views & Streaming Tables
- **Phase:** BETA
- **Status:** ✅ 200

Materialized View (MV) and Streaming Table (ST) schedules now surface as a system-managed refresh job, providing improved observability and configurability. Users can view the refresh job, configure schedules and trigger frequency, set notifications for refresh runs, and choose between standard or performance-optimized execution modes directly in the Catalog Explorer.

```json
{"boolean_val": {"value": true}}
```

### `tabular_subscription_attachments`

- **Display name:** Widget Data Attachments for Dashboard Subscriptions
- **Phase:** GA
- **Status:** 🟡 404

Enables support for attaching widget data to dashboard subscription email notifications. Widget data can be attached as CSV, TSV, or Excel.

```json
{"boolean_val": {"value": true}}
```

### `third_party_agent_connectors`

- **Display name:** Third Party Connectors for Agents
- **Phase:** BETA
- **Status:** 🟡 404

Enables Databricks AI features to use Databricks-managed connectors to popular third party providers.

```json
{"boolean_val": {"value": true}}
```

### `tiktok_ads_connector`

- **Display name:** Lakeflow Connect for TikTok Ads
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from TikTok Ads with a simple and efficient connector.

```json
{"boolean_val": {"value": true}}
```

### `tiles_platform`

- **Display name:** Mosaic AI Agent Bricks Preview
- **Phase:** BETA
- **Status:** ✅ 200

Mosaic AI Agent Bricks enables you to build and optimize domain-specific agent systems. Simply select your problem, and Agent Bricks will run optimizations to improve quality and cost, generating a deployable endpoint on Databricks. Additionally, Agent Bricks provides automated evaluation and recommendations to refine your agent systems performance. Enabling this flag will also enable ai_parse_document function; however, for the regions where Agent Bricks is not available, you will only get access to ai_parse_document without Agent Bricks enabled.

```json
{"boolean_val": {"value": true}}
```

### `ucmr_prompt_registry`

- **Display name:** Managed MLflow Prompt Registry
- **Phase:** BETA
- **Status:** ✅ 200

Managed MLflow Prompt Registry on Databricks is a powerful tool that streamlines prompt engineering and management in your Generative AI (GenAI) applications. It enables you to version, track, and reuse prompts across your organization, helping maintain consistency and improving collaboration in prompt development.  The Prompt Registry also enables you to optimize prompts through a native integration with DSPy, delivering higher quality while minimizing time spent on manual prompt engineering.

```json
{"boolean_val": {"value": true}}
```

### `variant_shredding`

- **Display name:** Variant Shredding for Optimized Read Performance on Semi-Structured Data
- **Phase:** BETA
- **Status:** ✅ 200

Variant shredding extracts commonly occurring fields in semi-structured data into separate columns during writes. This significantly improves read performance, but incurs some overhead on writes. Variant shredding is supported in DBR 17.2 and above.

```json
{"boolean_val": {"value": true}}
```

### `vector_search_rerank`

- **Display name:** Vector Search Reranker
- **Phase:** GA
- **Status:** ✅ 200

When enabled, users can improve similarity search quality from Vector Search by reranking retrieved results with a specialized model. No provisioning or endpoint management required. Use the familiar similarity search APIs, and get better quality results.

```json
{"boolean_val": {"value": true}}
```

### `vectorsearch_highqps`

- **Display name:** Vector Search High QPS
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Vector Search High QPS enables significantly higher real-time query throughput for Vector Search by scaling endpoint capacity via replication – so you can serve more concurrent search requests without standing up or load‑balancing across multiple endpoints. In this phase, you manually increase QPS capacity by adjusting endpoint replication and monitor performance using available metrics; support for automatic scaling is planned for later releases.

```json
{"boolean_val": {"value": true}}
```

### `vs_autoeval`

- **Display name:** Vector Search AutoEval
- **Phase:** BETA
- **Status:** 🟡 404

Vector Search AutoEval enables automatic search quality evaluation for Vector Search indexes, using synthetic query generation and LLM-based relevance scoring to measure recall, precision, NDCG, and other retrieval metrics.

```json
{"boolean_val": {"value": true}}
```

### `vs_full_text`

- **Display name:** Vector Search Full Text
- **Phase:** BETA
- **Status:** ✅ 200

When enabled, users can create full-text indices and run full-text search queries directly on indices. This bypasses ANN entirely and is especially valuable in scenarios where precise keyword matching is required.

```json
{"boolean_val": {"value": true}}
```

### `wday_hcm_connector`

- **Display name:** Lakeflow Connect for Workday HCM
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from Workday HCM with a simple and efficient connector. To ingest from Workday RaaS, use the Workday Reports connector instead.

```json
{"boolean_val": {"value": true}}
```

### `wh_activity_details`

- **Display name:** Warehouse Activity Details
- **Phase:** BETA
- **Status:** ✅ 200

Provides deeper visibility into SQL Warehouse usage by showing why a warehouse is running even when no queries are visible. The SQL Warehouse monitoring UI includes an activity details view in the running clusters chart, showing query execution and client-driven activity, such as open sessions or query fetching.

```json
{"boolean_val": {"value": true}}
```

### `wsfs_git_cli`

- **Display name:** Git CLI support for Git folders
- **Phase:** BETA
- **Status:** ✅ 200

You can now run Git CLI commands against Git folders in the Web Terminal and from notebooks. Previously, there was only support for Git operations via the UI.

```json
{"boolean_val": {"value": true}}
```

### `zdesk_supt_connector`

- **Display name:** Lakeflow Connect for Zendesk Support
- **Phase:** GA
- **Status:** ✅ 200

Ingest from Zendesk Support with a simple and efficient connector.

```json
{"boolean_val": {"value": true}}
```

### `zerobus_ingest_core`

- **Display name:** Lakeflow Connect Zerobus Ingest
- **Phase:** GA
- **Status:** ✅ 200

Zerobus Ingest, part of Lakeflow Connect, is a robust API that allows you to efficiently push data into tables in a streaming, record-by-record, fashion, operating in a serverless multi-tenant environment to support a high volume of clients.

```json
{"boolean_val": {"value": true}}
```

