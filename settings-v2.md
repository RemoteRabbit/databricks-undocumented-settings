# Databricks settings v2 (/api/2.1/settings/{name})

_Auto-generated on 2026-08-17T06:12:31Z._
_Catalog from `GET /api/2.1/settings-metadata`; status column from per-name probe against a Databricks host._
_202 entries. Use with the `databricks_workspace_setting_v2` Terraform resource._

Status legend: ✅ 200 set · 🟡 404 recognized but unset · ❌ other failure · - not probed

## Index by preview phase

- **BETA**: 90 settings
- **GA**: 72 settings
- **GA_SOON**: 4 settings
- **PUBLIC_PREVIEW**: 36 settings

## Summary

| Name | Phase | Status | Display Name |
|---|---|---|---|
| [`agent_monitoring`](#agent_monitoring) | BETA | ✅ 200 | Production Monitoring for MLflow |
| [`agents_obo`](#agents_obo) | PUBLIC_PREVIEW | ✅ 200 | Agent Framework: On-Behalf-Of-User Authorization |
| [`aha_connector`](#aha_connector) | BETA | 🟡 404 | Lakeflow Connect for Aha! |
| [`ai_classify`](#ai_classify) | GA | ✅ 200 | AI Classify |
| [`ai_extract`](#ai_extract) | GA | ✅ 200 | AI Extract |
| [`ai_gateway_ga_ws`](#ai_gateway_ga_ws) | GA | 🟡 404 | Unity AI Gateway |
| [`ai_parse_document`](#ai_parse_document) | GA | ✅ 200 | AI ParseDocument |
| [`ai_prep_search`](#ai_prep_search) | BETA | 🟡 404 | AI Prep Search |
| [`ai_runtime_beta_features`](#ai_runtime_beta_features) | BETA | 🟡 404 | AI Runtime Beta Features |
| [`ai_search`](#ai_search) | BETA | 🟡 404 | AI Search |
| [`ai_top_drivers`](#ai_top_drivers) | BETA | 🟡 404 | Predictive AI Functions |
| [`aibi_dash_embed_ws_acc_policy`](#aibi_dash_embed_ws_acc_policy) | GA | ✅ 200 | AI/BI Dashboard Embedding Access Policy |
| [`aibi_dash_embed_ws_apprvd_domains`](#aibi_dash_embed_ws_apprvd_domains) | GA | ✅ 200 | AI/BI Dashboard Embedding Approved Domains |
| [`aibi_dashboard_relationships`](#aibi_dashboard_relationships) | PUBLIC_PREVIEW | 🟡 404 | AI/BI Dashboard Relationships |
| [`air_h100_multinode`](#air_h100_multinode) | PUBLIC_PREVIEW | ✅ 200 | Serverless GPU Compute API Remote H100s |
| [`air_interactive`](#air_interactive) | PUBLIC_PREVIEW | ✅ 200 | Serverless GPU Compute |
| [`alerts_v2`](#alerts_v2) | GA | ✅ 200 | SQL Alerts V2 |
| [`alertv2_job_task`](#alertv2_job_task) | GA | ✅ 200 | Alert Job Task |
| [`allowedAppsUserApiScopes`](#allowedappsuserapiscopes) | GA | ✅ 200 | Restrict OAuth scopes for apps to selected values |
| [`anomaly_detection_ws`](#anomaly_detection_ws) | PUBLIC_PREVIEW | ✅ 200 | Data quality monitoring with anomaly detection (workspace level) |
| [`anthropic_connector`](#anthropic_connector) | BETA | 🟡 404 | Lakeflow Connect for Anthropic |
| [`apps_otel`](#apps_otel) | PUBLIC_PREVIEW | ✅ 200 | OpenTelemetry for Databricks Apps |
| [`apps_v2_ui`](#apps_v2_ui) | GA | 🟡 404 | Databricks Apps V2 |
| [`authoring_context`](#authoring_context) | PUBLIC_PREVIEW | ✅ 200 | Focused notebook & file editor for Git folders |
| [`auto_cdf`](#auto_cdf) | GA | ✅ 200 | Auto-CDF (Change Data Feed) |
| [`automatic_cluster_update`](#automatic_cluster_update) | GA | ✅ 200 | Automatic cluster update |
| [`cld_to_volumes`](#cld_to_volumes) | GA | ✅ 200 | Cluster Log Delivery to UC Volumes |
| [`cloudfiles_excel`](#cloudfiles_excel) | GA | ✅ 200 | Excel File Format Support |
| [`collaboration_platform_connectivity`](#collaboration_platform_connectivity) | GA | ✅ 200 | Allowed collaboration platforms |
| [`collaboration_platform_message_visibility`](#collaboration_platform_message_visibility) | GA | ✅ 200 | Allow public messages in collaboration platforms |
| [`confluence_connector`](#confluence_connector) | GA | ✅ 200 | Lakeflow Connect for Confluence |
| [`conn_cdc_col_select`](#conn_cdc_col_select) | PUBLIC_PREVIEW | ✅ 200 | Lakeflow Connect Column Selection for Database Sources |
| [`custom_apps_preview`](#custom_apps_preview) | GA | ✅ 200 | Databricks Apps |
| [`custom_llm_serving`](#custom_llm_serving) | BETA | ✅ 200 | Custom LLM Serving for Databricks Model Serving |
| [`customerApprovedWSLoginExpirationTime`](#customerapprovedwsloginexpirationtime) | GA | ✅ 200 | Workspace access for Databricks personnel |
| [`dabs_templates`](#dabs_templates) | GA | ✅ 200 | Custom bundle templates in the workspace |
| [`dabs_visual_edit`](#dabs_visual_edit) | PUBLIC_PREVIEW | ✅ 200 | Visual authoring: UI <> YAML Sync for DABs in the Workspace |
| [`dashboard_authoring_agent`](#dashboard_authoring_agent) | GA | 🟡 404 | Genie Code for dashboard authoring |
| [`databricks_one`](#databricks_one) | GA | ✅ 200 | Databricks One |
| [`dataclassificationws`](#dataclassificationws) | GA | ✅ 200 | Data Classification |
| [`datascience_agent`](#datascience_agent) | GA | ✅ 200 | Genie Code |
| [`dbsql_5xl_pro`](#dbsql_5xl_pro) | PUBLIC_PREVIEW | ✅ 200 | 5XL PRO SQL Warehouse |
| [`dbsql_5xl_serverless`](#dbsql_5xl_serverless) | PUBLIC_PREVIEW | ✅ 200 | 5XL Serverless SQL Warehouse |
| [`dbt_cloud_task`](#dbt_cloud_task) | BETA | ✅ 200 | dbt platform task |
| [`dc_custom_tags`](#dc_custom_tags) | BETA | 🟡 404 | Extend Data Classification with Custom Classifiers |
| [`default_wh_setting`](#default_wh_setting) | GA | ✅ 200 | Default warehouse setting |
| [`designer`](#designer) | GA | ✅ 200 | Lakeflow Designer |
| [`direct_cdc_connector`](#direct_cdc_connector) | BETA | ✅ 200 | LakeFlow Connect for Direct Cdc Managed Ingestion Pipeline |
| [`disable_legacy_access`](#disable_legacy_access) | GA | ✅ 200 | Disable legacy access |
| [`disable_legacy_dbfs`](#disable_legacy_dbfs) | GA | ✅ 200 | Disable DBFS root and mounts |
| [`discover_page`](#discover_page) | PUBLIC_PREVIEW | ✅ 200 | Discover Page |
| [`dqm_percent_null_v2`](#dqm_percent_null_v2) | BETA | 🟡 404 | Experimental Data Quality Monitoring checks |
| [`ds_v2_join_pushdown`](#ds_v2_join_pushdown) | PUBLIC_PREVIEW | ✅ 200 | Join Pushdown for Federated Queries |
| [`dynamics_connector`](#dynamics_connector) | GA | ✅ 200 | Lakeflow Connect for Dynamics 365 |
| [`embedded_genie`](#embedded_genie) | GA | 🟡 404 | Embed Genie as an iframe |
| [`enable_dcs_vnext`](#enable_dcs_vnext) | BETA | ✅ 200 | DCS-vNext |
| [`enable_dlmv_aibi`](#enable_dlmv_aibi) | PUBLIC_PREVIEW | ✅ 200 | Enable Dashboard Local Metric Views in AI/BI Dashboards |
| [`enable_genie_web_search`](#enable_genie_web_search) | BETA | 🟡 404 | Genie Code Web Search |
| [`enable_github_webhook_app_deployments`](#enable_github_webhook_app_deployments) | BETA | 🟡 404 | Databricks Apps - Webhook-Triggered Deployments (GitHub, Azure DevOps) |
| [`enable_hscaling_apps`](#enable_hscaling_apps) | BETA | ✅ 200 | Apps Horizontal Scaling |
| [`enable_lakeview_tags`](#enable_lakeview_tags) | PUBLIC_PREVIEW | ✅ 200 | Tagging support for workspace scoped assets |
| [`enable_obo_user_apps`](#enable_obo_user_apps) | GA_SOON | ✅ 200 | Databricks Apps - On-Behalf-Of User Authorization |
| [`enable_workspace_repo_configuration`](#enable_workspace_repo_configuration) | BETA | 🟡 404 | Enable Workspace Repo Configuration for Databricks Apps |
| [`enforceGitAppDeployments`](#enforcegitappdeployments) | GA | ✅ 200 | Only allow app deployments from Git |
| [`enforce_single_user_cluster_permission`](#enforce_single_user_cluster_permission) | BETA | 🟡 404 | Enforce Single User Cluster Permission |
| [`excel_connector_flip`](#excel_connector_flip) | PUBLIC_PREVIEW | 🟡 404 | Excel Add-In |
| [`excl_data_access`](#excl_data_access) | PUBLIC_PREVIEW | ✅ 200 | Role-based access control (RBAC) |
| [`exp_sp_token_notif`](#exp_sp_token_notif) | GA | ✅ 200 | Expiring service principal access token notifications |
| [`external_access_to_managed_delta`](#external_access_to_managed_delta) | PUBLIC_PREVIEW | 🟡 404 | External Access to Unity Catalog Managed Delta Table |
| [`external_engine_fgac`](#external_engine_fgac) | BETA | 🟡 404 | Cross-engine ABAC |
| [`file_type`](#file_type) | BETA | 🟡 404 | File data type |
| [`filebrowser_tree`](#filebrowser_tree) | PUBLIC_PREVIEW | ✅ 200 | Tree view of the side panel file browser |
| [`fmapi_qwen3_instruct`](#fmapi_qwen3_instruct) | PUBLIC_PREVIEW | ✅ 200 | Enable Extended Models |
| [`foreign_tbl_comments`](#foreign_tbl_comments) | BETA | ✅ 200 | Comments on Foreign Tables |
| [`fstore_decl_fw`](#fstore_decl_fw) | PUBLIC_PREVIEW | ✅ 200 | Feature Views (Batch) |
| [`fstore_decl_strm_fw`](#fstore_decl_strm_fw) | PUBLIC_PREVIEW | ✅ 200 | Feature Store Streaming Feature Views |
| [`full_screen_genie_code`](#full_screen_genie_code) | GA | 🟡 404 | Full Page Genie Code |
| [`full_text_search_index`](#full_text_search_index) | BETA | 🟡 404 | SQL: Full-Text Search Index for UC managed tables |
| [`gdrive_connector`](#gdrive_connector) | GA | ✅ 200 | Lakeflow Connect for Google Drive |
| [`generic_lfc`](#generic_lfc) | BETA | ✅ 200 | Lakeflow Connect Community Connectors |
| [`genie_bi_migration`](#genie_bi_migration) | PUBLIC_PREVIEW | 🟡 404 | Import from External BI to AI/BI |
| [`genie_bring_your_own_volume`](#genie_bring_your_own_volume) | BETA | 🟡 404 | Analyze Files in Volumes with Genie Agents |
| [`genie_chat_sharing`](#genie_chat_sharing) | GA | ✅ 200 | Genie Chat Sharing |
| [`genie_code_automations`](#genie_code_automations) | BETA | 🟡 404 | Genie Code Scheduled Tasks |
| [`genie_deep_research`](#genie_deep_research) | GA | ✅ 200 | Genie Agent |
| [`genie_inspect_answer`](#genie_inspect_answer) | PUBLIC_PREVIEW | ✅ 200 | Genie Answer Inspection |
| [`genie_one_file_upload`](#genie_one_file_upload) | BETA | 🟡 404 | Genie One File Upload |
| [`genie_one_user_memory`](#genie_one_user_memory) | BETA | 🟡 404 | Genie One Memory |
| [`genie_ontology_snippets`](#genie_ontology_snippets) | PUBLIC_PREVIEW | 🟡 404 | Genie Ontology snippets |
| [`genie_spaces_agentic_api`](#genie_spaces_agentic_api) | BETA | 🟡 404 | Agent Mode APIs for Genie Agents |
| [`genie_unstructured_files_in_deepresearch_mode`](#genie_unstructured_files_in_deepresearch_mode) | BETA | 🟡 404 | Upload Local PDFs to Genie Spaces |
| [`github_connector`](#github_connector) | BETA | ✅ 200 | Lakeflow Connect for Github |
| [`gmail_connector`](#gmail_connector) | BETA | 🟡 404 | Lakeflow Connect for Gmail |
| [`google_ads_connector`](#google_ads_connector) | BETA | ✅ 200 | Lakeflow Connect for Google Ads |
| [`google_search_console_connector`](#google_search_console_connector) | BETA | 🟡 404 | Lakeflow Connect for Google Search Console |
| [`hspot_mktg_connector`](#hspot_mktg_connector) | GA | ✅ 200 | Lakeflow Connect for HubSpot |
| [`icebergv3`](#icebergv3) | GA | ✅ 200 | Iceberg V3 |
| [`integrated_cdc_mysql_connector`](#integrated_cdc_mysql_connector) | BETA | 🟡 404 | LakeFlow Connect for Integrated Cdc MySQL Connector |
| [`integrated_cdc_oracle_connector`](#integrated_cdc_oracle_connector) | BETA | 🟡 404 | LakeFlow Connect for Integrated Cdc Oracle Connector |
| [`integrated_cdc_sql_server_connector`](#integrated_cdc_sql_server_connector) | BETA | 🟡 404 | LakeFlow Connect for Integrated Cdc Sql Server Connector |
| [`ip_functions`](#ip_functions) | PUBLIC_PREVIEW | 🟡 404 | Ip Functions |
| [`jdbc_connector`](#jdbc_connector) | PUBLIC_PREVIEW | ✅ 200 | Custom JDBC on UC Compute |
| [`jdbc_oauth_m2m_connector`](#jdbc_oauth_m2m_connector) | BETA | 🟡 404 | OAuth M2M Support for Custom JDBC on UC Compute |
| [`jira_connector`](#jira_connector) | BETA | ✅ 200 | Lakeflow Connect for Jira |
| [`job_cluster_default_auto_data_security_mode`](#job_cluster_default_auto_data_security_mode) | BETA | 🟡 404 | Job cluster default auto data security mode |
| [`jobs_disabled_tasks`](#jobs_disabled_tasks) | GA | ✅ 200 | Disabled tasks in Lakeflow Jobs |
| [`jobs_serverless_managed_base_environments`](#jobs_serverless_managed_base_environments) | BETA | 🟡 404 | Serverless workspace base environment support in Jobs |
| [`kafka_connector`](#kafka_connector) | BETA | 🟡 404 | Lakeflow Connect for Kafka |
| [`lakebase_accel_sync`](#lakebase_accel_sync) | BETA | ✅ 200 | LTAP Direct Writes |
| [`lakebase_cdf`](#lakebase_cdf) | PUBLIC_PREVIEW | ✅ 200 | Lakebase CDF |
| [`lakebase_insights`](#lakebase_insights) | BETA | 🟡 404 | Lakebase Advanced Postgres Telemetry |
| [`lakebase_otel_integration`](#lakebase_otel_integration) | BETA | 🟡 404 | Lakebase OpenTelemetry Integration |
| [`lakebase_search`](#lakebase_search) | BETA | 🟡 404 | Lakebase Search |
| [`lakebridge`](#lakebridge) | BETA | 🟡 404 | Agentic Converter in Genie Code |
| [`lakeflow_new_jobs_ui`](#lakeflow_new_jobs_ui) | GA | ✅ 200 | Lakeflow Jobs UI |
| [`lakeflow_qbc`](#lakeflow_qbc) | GA | ✅ 200 | Lakeflow Connect Query Based Connectors |
| [`lakeflow_runs_list`](#lakeflow_runs_list) | GA | ✅ 200 | Unified Runs List |
| [`lakehouse_replay`](#lakehouse_replay) | PUBLIC_PREVIEW | ✅ 200 | Lakehouse Replay |
| [`lf_pipelines_auth`](#lf_pipelines_auth) | GA | ✅ 200 | Lakeflow Pipelines Editor |
| [`llm_proxy_partner_powered`](#llm_proxy_partner_powered) | GA | ✅ 200 | Partner-powered AI features |
| [`managed_mcp_servers`](#managed_mcp_servers) | PUBLIC_PREVIEW | ✅ 200 | Managed MCP Servers |
| [`managed_memory_agents`](#managed_memory_agents) | BETA | 🟡 404 | Managed Memory for Agents |
| [`marketo_connector`](#marketo_connector) | BETA | 🟡 404 | Lakeflow Connect for Marketo |
| [`marketplace_app_install`](#marketplace_app_install) | PUBLIC_PREVIEW | 🟡 404 | Marketplace - Install Databricks Apps |
| [`meta_ads_connector`](#meta_ads_connector) | BETA | ✅ 200 | Lakeflow Connect for Meta Ads |
| [`metadata_automations`](#metadata_automations) | BETA | 🟡 404 | Tag Automations |
| [`mlflow_custom_trace_view`](#mlflow_custom_trace_view) | BETA | 🟡 404 | MLflow Custom Trace View |
| [`mlflow_logged_models`](#mlflow_logged_models) | PUBLIC_PREVIEW | ✅ 200 | Models in Unity Catalog: Deployment Jobs |
| [`model_triggers`](#model_triggers) | BETA | ✅ 200 | Model update job triggers |
| [`monday_com_connector`](#monday_com_connector) | BETA | 🟡 404 | Lakeflow Connect for Monday.com |
| [`mst`](#mst) | PUBLIC_PREVIEW | ✅ 200 | Transactions |
| [`multiple_git_creds`](#multiple_git_creds) | GA | ✅ 200 | Multiple Git Credentials |
| [`netskope_logs_connector`](#netskope_logs_connector) | BETA | 🟡 404 | Lakeflow Connect for Netskope Logs |
| [`netsuite_connector`](#netsuite_connector) | GA | ✅ 200 | Lakeflow Connect for Netsuite |
| [`new_policy_form`](#new_policy_form) | GA | ✅ 200 | New compute policy form |
| [`object_metadata_column`](#object_metadata_column) | PUBLIC_PREVIEW | 🟡 404 | Object Metadata Column |
| [`oltp_database`](#oltp_database) | GA | ✅ 200 | Lakebase Postgres |
| [`omnigents`](#omnigents) | BETA | 🟡 404 | Omnigent |
| [`one_chat`](#one_chat) | GA | ✅ 200 | New chat experience in Genie |
| [`openai_connector`](#openai_connector) | BETA | 🟡 404 | Lakeflow Connect for OpenAI  |
| [`operationalEmailCustomRecipient`](#operationalemailcustomrecipient) | GA | ✅ 200 | Operational emails |
| [`otel_collector`](#otel_collector) | GA | ✅ 200 | OpenTelemetry on Databricks |
| [`otel_model_serving`](#otel_model_serving) | GA | ✅ 200 | OpenTelemetry for Databricks Model Serving |
| [`outlook_connector`](#outlook_connector) | BETA | ✅ 200 | Lakeflow Connect for Outlook |
| [`pagerduty_connector`](#pagerduty_connector) | BETA | 🟡 404 | Lakeflow Connect for PagerDuty |
| [`pat_autoscoping`](#pat_autoscoping) | BETA | 🟡 404 | Personal access tokens auto-scoping |
| [`pendo_connector`](#pendo_connector) | BETA | 🟡 404 | Lakeflow Connect for Pendo |
| [`pipeline_parameters`](#pipeline_parameters) | BETA | ✅ 200 | Spark Declarative Pipeline Parameters |
| [`pipelines_user_facing_testing`](#pipelines_user_facing_testing) | BETA | 🟡 404 | Pipelines Unit Testing |
| [`pkg_repo_api_cluster`](#pkg_repo_api_cluster) | GA_SOON | ✅ 200 | Default Python package repositories in clusters created via API |
| [`pkg_repo_dlt`](#pkg_repo_dlt) | GA_SOON | ✅ 200 | Default Python package repositories in Spark Declarative Pipelines |
| [`pkg_repo_ui_cluster`](#pkg_repo_ui_cluster) | GA_SOON | ✅ 200 | Default Python package repositories in clusters created via UI |
| [`power_bi_task`](#power_bi_task) | PUBLIC_PREVIEW | ✅ 200 | Power BI task type |
| [`query_perf_insights`](#query_perf_insights) | BETA | ✅ 200 | Query performance insights |
| [`rabbitmq_connector`](#rabbitmq_connector) | BETA | 🟡 404 | Lakeflow Connector for RabbitMQ |
| [`read_metadata_privilege`](#read_metadata_privilege) | GA | 🟡 404 | Advanced metadata viewing privilege ('READ METADATA') |
| [`reddit_ads_connector`](#reddit_ads_connector) | BETA | 🟡 404 | Lakeflow Connect for Reddit Ads |
| [`remote_ds_writes`](#remote_ds_writes) | GA | ✅ 200 | Remote data sources write support on serverless compute |
| [`remote_query_tvf`](#remote_query_tvf) | GA | ✅ 200 | Enables remote query table-valued function (remote_query). |
| [`scoped_pat`](#scoped_pat) | GA | ✅ 200 | Scoped personal access tokens |
| [`sendgrid_connector`](#sendgrid_connector) | BETA | 🟡 404 | Lakeflow Connect for SendGrid |
| [`serverless_compute`](#serverless_compute) | GA | 🟡 404 | Serverless Compute Access Control |
| [`serverless_jar_jobs`](#serverless_jar_jobs) | GA | ✅ 200 | Serverless JARs |
| [`serverless_workload_observability`](#serverless_workload_observability) | BETA | 🟡 404 | Improved Lakeflow Performance Observability |
| [`sf_mktg_connector`](#sf_mktg_connector) | BETA | ✅ 200 | Lakeflow Connect for Salesforce Marketing Cloud |
| [`sfdc_file_sharing`](#sfdc_file_sharing) | GA | ✅ 200 | Salesforce Data Cloud file sharing federation |
| [`sftp_connector`](#sftp_connector) | GA | ✅ 200 | SFTP Connector |
| [`sharepoint_connector`](#sharepoint_connector) | GA | ✅ 200 | Lakeflow Connect for Sharepoint |
| [`shield_csp_enablement_ws_db`](#shield_csp_enablement_ws_db) | GA | ✅ 200 | Compliance security profile |
| [`shield_esm_enablement_ws_db`](#shield_esm_enablement_ws_db) | GA | ✅ 200 | Enhanced security monitoring |
| [`smartsheet_connector`](#smartsheet_connector) | BETA | ✅ 200 | Lakeflow Connect for Smartsheet |
| [`square_connector`](#square_connector) | BETA | 🟡 404 | Lakeflow Connect for Square |
| [`standalone_mv_st_on_serverless_gc`](#standalone_mv_st_on_serverless_gc) | BETA | 🟡 404 | MV and ST in Serverless Notebooks and Jobs |
| [`strac_connector`](#strac_connector) | BETA | 🟡 404 | Lakeflow Connect for Strac |
| [`supervisor_api`](#supervisor_api) | BETA | 🟡 404 | Supervisor API |
| [`system_managed_job`](#system_managed_job) | BETA | ✅ 200 | System-Managed Job for Materialized Views & Streaming Tables |
| [`third_party_agent_connectors`](#third_party_agent_connectors) | BETA | 🟡 404 | Third Party Connectors for Agents |
| [`tiktok_ads_connector`](#tiktok_ads_connector) | BETA | ✅ 200 | Lakeflow Connect for TikTok Ads |
| [`time_type`](#time_type) | BETA | 🟡 404 | Time data type |
| [`tut_delta_sharing_ws`](#tut_delta_sharing_ws) | BETA | ✅ 200 | Table Update Triggers on OpenSharing (Recipient) |
| [`uc_scala_udfs`](#uc_scala_udfs) | GA | ✅ 200 | Scala and Java UDFs in Unity Catalog |
| [`uc_secrets`](#uc_secrets) | GA | ✅ 200 | Secrets in Unity Catalog |
| [`uc_udf_dependencies`](#uc_udf_dependencies) | GA | ✅ 200 | Enhanced Python UDFs in Unity Catalog |
| [`ucmr_prompt_registry`](#ucmr_prompt_registry) | BETA | ✅ 200 | Managed MLflow Prompt Registry |
| [`variant_shredding`](#variant_shredding) | GA | ✅ 200 | Variant Shredding for Optimized Read Performance on Semi-Structured Data |
| [`vector_search_rerank`](#vector_search_rerank) | GA | ✅ 200 | Vector Search Reranker |
| [`vectorsearch_highqps`](#vectorsearch_highqps) | GA | ✅ 200 | Vector Search High QPS |
| [`veeva_connector`](#veeva_connector) | BETA | ✅ 200 | Lakeflow Connect for Veeva |
| [`vs_autoeval`](#vs_autoeval) | BETA | 🟡 404 | AI Search: Quality Evaluation |
| [`vs_full_text`](#vs_full_text) | BETA | ✅ 200 | AI Search: Full-Text Search |
| [`warehouse_stmt_tmout`](#warehouse_stmt_tmout) | BETA | ✅ 200 | Warehouse Statement Timeout |
| [`wday_hcm_connector`](#wday_hcm_connector) | BETA | ✅ 200 | Lakeflow Connect for Workday HCM |
| [`wh_activity_details`](#wh_activity_details) | GA | ✅ 200 | Warehouse Activity Details |
| [`wiz_alogs_connector`](#wiz_alogs_connector) | BETA | 🟡 404 | Lakeflow Connect for Wiz Audit Logs |
| [`workiva_connector`](#workiva_connector) | BETA | 🟡 404 | Lakeflow Connect for Workiva |
| [`wsfs_git_cli`](#wsfs_git_cli) | PUBLIC_PREVIEW | ✅ 200 | Git CLI support for Git folders |
| [`zdesk_supt_connector`](#zdesk_supt_connector) | GA | ✅ 200 | Lakeflow Connect for Zendesk Support |
| [`zerobus_ingest_core`](#zerobus_ingest_core) | GA | ✅ 200 | Lakeflow Connect Zerobus Ingest |
| [`zerobus_kafka_endpoint`](#zerobus_kafka_endpoint) | BETA | 🟡 404 | Zerobus Ingest Kafka Endpoint |
| [`zerobus_rescue_column_json`](#zerobus_rescue_column_json) | BETA | 🟡 404 | Zerobus Ingest Rescue Column JSON |
| [`zip_connector`](#zip_connector) | BETA | 🟡 404 | Lakeflow Connect for Zip |
| [`zoho_books_connector`](#zoho_books_connector) | BETA | 🟡 404 | Lakeflow Connect for Zoho Books |

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

### `aha_connector`

- **Display name:** Lakeflow Connect for Aha!
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Aha! using a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `ai_classify`

- **Display name:** AI Classify
- **Phase:** GA
- **Status:** ✅ 200

The ai_classify() function enables you to classify input text directly in SQL using state-of-the-art generative AI models provided by Databricks Foundation Model APIs. By supplying a set of labels, you can declaratively assign categories to unstructured text.

```json
{"boolean_val": {"value": true}}
```

### `ai_extract`

- **Display name:** AI Extract
- **Phase:** GA
- **Status:** ✅ 200

The ai_extract() function enables you to extract structured entities from unstructured text directly in SQL using state-of-the-art generative AI models provided by Databricks Foundation Model APIs. After specifying a target schema, you can declaratively transform raw text into structured outputs.

```json
{"boolean_val": {"value": true}}
```

### `ai_gateway_ga_ws`

- **Display name:** Unity AI Gateway
- **Phase:** GA
- **Status:** 🟡 404

Unity AI Gateway is the control plane for AI: it routes every model and MCP request, enforces rate limits and cost controls, applies service policies, and records usage — across any model provider and any coding agent.

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

### `ai_search`

- **Display name:** AI Search
- **Phase:** BETA
- **Status:** 🟡 404

The ai_search() function brings production-quality agentic retrieval to SQL: given a natural-language query and one or more knowledge sources, it returns ranked, deduplicated documents optimized for retrieval and downstream LLM consumption.

```json
{"boolean_val": {"value": true}}
```

### `ai_top_drivers`

- **Display name:** Predictive AI Functions
- **Phase:** BETA
- **Status:** 🟡 404

Enables all new predictive functions for analyzing tabular data in Databricks SQL.

```json
{"boolean_val": {"value": true}}
```

### `aibi_dash_embed_ws_acc_policy`

- **Display name:** AI/BI Dashboard Embedding Access Policy
- **Phase:** GA
- **Status:** ✅ 200

Controls whether AI/BI published dashboard embedding is enabled, conditionally enabled, or disabled at the workspace level.By default, this setting is conditionally enabled (ALLOW_APPROVED_DOMAINS).

```json
{"access_policy_type": "ACCESS_POLICY_TYPE_UNSPECIFIED"}
```

### `aibi_dash_embed_ws_apprvd_domains`

- **Display name:** AI/BI Dashboard Embedding Approved Domains
- **Phase:** GA
- **Status:** ✅ 200

Controls the list of domains approved to host the embedded AI/BI dashboards.The approved domains list can't be mutated when the current access policy is not set to ALLOW_APPROVED_DOMAINS.

```json
{"approved_domains": ["sample_string"]}
```

### `aibi_dashboard_relationships`

- **Display name:** AI/BI Dashboard Relationships
- **Phase:** PUBLIC_PREVIEW
- **Status:** 🟡 404

Enable creating relationships (fka Semantic Models) inside AI/BI dashboards.

```json
{"boolean_val": {"value": true}}
```

### `air_h100_multinode`

- **Display name:** Serverless GPU Compute API Remote H100s
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enables users to use Serverless GPU Compute Python APIs to submit remote distributed training workloads using single and multi-node H100 GPUs for users of Serverless GPU Compute.

```json
{"boolean_val": {"value": true}}
```

### `air_interactive`

- **Display name:** Serverless GPU Compute
- **Phase:** PUBLIC_PREVIEW
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
- **Phase:** GA
- **Status:** ✅ 200

User can select Alert as a primary job task type.

```json
{"boolean_val": {"value": true}}
```

### `allowedAppsUserApiScopes`

- **Display name:** Restrict OAuth scopes for apps to selected values
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

### `anthropic_connector`

- **Display name:** Lakeflow Connect for Anthropic
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Anthropic with a simple and efficient connector

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

### `auto_cdf`

- **Display name:** Auto-CDF (Change Data Feed)
- **Phase:** GA
- **Status:** ✅ 200

This preview enables a new Change Data Feed (CDF) mode that now allows Iceberg writers to write to the table. This new CDF can improve write-time performance, given that it computes the CDF at query time. It requires row tracking, but does not require (`delta.enableChangeDataFeed`) to be enabled on the table. It is available only for DBR version 17.3 and above, on DBR (Spark + DBSQL).

```json
{"boolean_val": {"value": true}}
```

### `automatic_cluster_update`

- **Display name:** Automatic cluster update
- **Phase:** GA
- **Status:** ✅ 200

Automatic cluster update ensures that all the clusters in a workspace are periodically updated to the latest host OS image and security updates. Account admins can schedule the maintenance window frequency, start date, and start time. Applies to classic compute (clusters, pools, classic SQL warehouses, legacy Model Serving); it does not apply to serverless compute. Enabling this feature adds the Enhanced Security and Compliance add-on and requires the Premium pricing tier.

```json
{"enabled": true,"can_toggle": true,"maintenance_window": {"week_day_based_schedule": {"frequency": "WEEK_DAY_FREQUENCY_UNSPECIFIED","day_of_week": "DAY_OF_WEEK_UNSPECIFIED","window_start_time": {"hours": 0,"minutes": 0}}},"enablement_details": {"unavailable_for_non_enterprise_tier": true,"unavailable_for_disabled_entitlement": true,"forced_for_compliance_mode": true},"restart_even_if_no_updates_available": true}
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

### `collaboration_platform_connectivity`

- **Display name:** Allowed collaboration platforms
- **Phase:** GA
- **Status:** ✅ 200

Controls which external collaboration platforms (Slack and/or Microsoft Teams) can connect to this workspace. Defaults to ALLOW_ALL.

```json
{"connectivity": "CONNECTIVITY_UNSPECIFIED"}
```

### `collaboration_platform_message_visibility`

- **Display name:** Allow public messages in collaboration platforms
- **Phase:** GA
- **Status:** ✅ 200

When enabled, users can choose whether responses from the Databricks app in Slack are visible to the channel. When disabled, all responses are forced to be private to the requesting user.

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

### `custom_llm_serving`

- **Display name:** Custom LLM Serving for Databricks Model Serving
- **Phase:** BETA
- **Status:** ✅ 200

Enable serving custom LLMs in model serving endpoints.

```json
{"boolean_val": {"value": true}}
```

### `customerApprovedWSLoginExpirationTime`

- **Display name:** Workspace access for Databricks personnel
- **Phase:** GA
- **Status:** ✅ 200

A specific time after which Databricks personnel may no longer log into your workspace. The time is formatted as `YYYY-MM-DDTHH:MM:SSZ`. You can completely disable access by setting it to a timestamp in the past, such as `1998-01-01T00:00:00.000Z`. Enable access indefinitely by using an empty string or the special value `indefinite`.

```json
{"string_val": {"value": "string"}}
```

### `dabs_templates`

- **Display name:** Custom bundle templates in the workspace
- **Phase:** GA
- **Status:** ✅ 200

This preview enables admins to set up custom templates that users can use to get started with asset bundles directly in the Workspace. It allows CI/CD stakeholders to enforce best practices and standardized formats, helping users skip repetitive setup and launch projects faster.

```json
{"boolean_val": {"value": true}}
```

### `dabs_visual_edit`

- **Display name:** Visual authoring: UI <> YAML Sync for DABs in the Workspace
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

This preview enables users to edit resources (Jobs, Pipelines) in the UI and have YAML automatically sync when using Declarative Automation Bundles in the Workspace. Users can set up their resources for CI/CD without explicit knowledge of asset bundles.

```json
{"boolean_val": {"value": true}}
```

### `dashboard_authoring_agent`

- **Display name:** Genie Code for dashboard authoring
- **Phase:** GA
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
- **Phase:** GA
- **Status:** ✅ 200

Allows users to use Lakeflow Designer, a low-code, fully governed, AI-native tool for data transformations.

```json
{"boolean_val": {"value": true}}
```

### `direct_cdc_connector`

- **Display name:** LakeFlow Connect for Direct Cdc Managed Ingestion Pipeline
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from several databases instances for database connectors like SQL Server, Postgres, Oracle using Direct Cdc Managed Ingestion Pipeline.

```json
{"boolean_val": {"value": true}}
```

### `disable_legacy_access`

- **Display name:** Disable legacy access
- **Phase:** GA
- **Status:** ✅ 200

'Disabling legacy access' has the following impacts: 1. Disables direct access to Hive Metastores from the workspace (access through Hive Metastore federation is unaffected). 2. Disables fallback mode on external location access from the workspace. 3. Disables Databricks Runtime versions prior to 13.3LTS. Important: this setting cannot be enabled while the workspace default catalog is set to a legacy catalog (hive_metastore or spark_catalog). Change the default catalog to a Unity Catalog catalog first.

```json
{"boolean_val": {"value": true}}
```

### `disable_legacy_dbfs`

- **Display name:** Disable DBFS root and mounts
- **Phase:** GA
- **Status:** ✅ 200

Disabling legacy DBFS has the following two implications: 1. Access to DBFS root and DBFS mounts is disallowed (as well as the creation of new mounts). 2. Disables Databricks Runtime versions prior to 13.3LTS. When the setting is off, all DBFS functionality is enabled and no restrictions are imposed on Databricks Runtime versions. This setting can take up to 20 minutes to take effect and requires a manual restart of all-purpose compute clusters and SQL warehouses.

```json
{"boolean_val": {"value": true}}
```

### `discover_page`

- **Display name:** Discover Page
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enables the Discover Page in the left nav and the search empty state for this workspace. The Discover Page is a curated, user-friendly interface that helps users find and understand their organizations most important UC and workspace assets. Note: The account-level Domain and Discover flag must also be enabled for the Discover Page to appear in the local workspace.

```json
{"boolean_val": {"value": true}}
```

### `dqm_percent_null_v2`

- **Display name:** Experimental Data Quality Monitoring checks
- **Phase:** BETA
- **Status:** 🟡 404

Monitor anomalies in percent nulls and completeness slicing as part of Data Quality Monitoring

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
- **Phase:** GA
- **Status:** ✅ 200

Ingest Dynamics 365 data via Dataverse with a simple and efficient connector. Available via API or UI.

```json
{"boolean_val": {"value": true}}
```

### `embedded_genie`

- **Display name:** Embed Genie as an iframe
- **Phase:** GA
- **Status:** 🟡 404

This feature allows Genie space authors to embed Genie spaces into external applications. Users in the external application must have access to Databricks and the Genie space.

```json
{"boolean_val": {"value": true}}
```

### `enable_dcs_vnext`

- **Display name:** DCS-vNext
- **Phase:** BETA
- **Status:** ✅ 200

Enables DCS-vNext support, which uses the LXC container and Dataplane Runtime daemon and Sandbox API to run customer containers.

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

### `enable_genie_web_search`

- **Display name:** Genie Code Web Search
- **Phase:** BETA
- **Status:** 🟡 404

Enables Genie Code Web Search using web search providers compliant with this workspace

```json
{"boolean_val": {"value": true}}
```

### `enable_github_webhook_app_deployments`

- **Display name:** Databricks Apps - Webhook-Triggered Deployments (GitHub, Azure DevOps)
- **Phase:** BETA
- **Status:** 🟡 404

Automatically deploy apps when changes are pushed to a connected GitHub or Azure DevOps repository. Push events received via provider webhooks trigger app deployment workflows, removing the need for manual redeployment after code changes.

```json
{"boolean_val": {"value": true}}
```

### `enable_hscaling_apps`

- **Display name:** Apps Horizontal Scaling
- **Phase:** BETA
- **Status:** ✅ 200

Enable horizontal scaling by specifying number of compute instances for your app.

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

### `enable_workspace_repo_configuration`

- **Display name:** Enable Workspace Repo Configuration for Databricks Apps
- **Phase:** BETA
- **Status:** 🟡 404

Enables Databricks Apps to use workspace-level package repository configuration during app deployment, including workspace PyPI/NPM settings.

```json
{"boolean_val": {"value": true}}
```

### `enforceGitAppDeployments`

- **Display name:** Only allow app deployments from Git
- **Phase:** GA
- **Status:** ✅ 200

When enabled, apps in this workspace can only be deployed from Git.

```json
{"boolean_val": {"value": true}}
```

### `enforce_single_user_cluster_permission`

- **Display name:** Enforce Single User Cluster Permission
- **Phase:** BETA
- **Status:** 🟡 404

When enabled, non-admin users can only create dedicated (single-user) clusters assigned to themselves. Admins can create clusters for any user.

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

### `excl_data_access`

- **Display name:** Role-based access control (RBAC)
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Role-based access control (RBAC) lets customers configure groups that behave like roles. You grant identities (e.g., users) permission to Assume a group instead of adding them as members. When a user assumes a group, the group's permissions fully replace the user's permissions, and Databricks authorizes all activity as the group. This lets customers model data isolation boundaries and exclusive access within a single workspace.

```json
{"boolean_val": {"value": true}}
```

### `exp_sp_token_notif`

- **Display name:** Expiring service principal access token notifications
- **Phase:** GA
- **Status:** ✅ 200

Enable automatic email notifications for service principal owned expiring personal access tokens. When enabled, this feature proactively monitors service principal access tokens in your workspace and sends email notifications to workspace admins before their tokens expire, helping prevent service disruptions and authentication failures.

```json
{"boolean_val": {"value": true}}
```

### `external_access_to_managed_delta`

- **Display name:** External Access to Unity Catalog Managed Delta Table
- **Phase:** PUBLIC_PREVIEW
- **Status:** 🟡 404

External Access to Unity Catalog Managed Delta Tables lets external engines like Apache Spark, Trino, and other Delta clients securely create, read and write Unity Catalog-managed Delta tables using Databricks open APIs and short-lived, UC-governed credentials.

```json
{"boolean_val": {"value": true}}
```

### `external_engine_fgac`

- **Display name:** Cross-engine ABAC
- **Phase:** BETA
- **Status:** 🟡 404

This feature enables external clients to securely access tables in Databricks via UC Open APIs with attribute-based access controls (ABAC), row filters, and column masks enforced.

```json
{"boolean_val": {"value": true}}
```

### `file_type`

- **Display name:** File data type
- **Phase:** BETA
- **Status:** 🟡 404

Enable support for the FILE data type. Applies to DBR 18+ on all Compute and SQL Warehouse variants.

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

- **Display name:** Enable Extended Models
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

This preview enables an extended family of models (e.g. Qwen) in model serving.

```json
{"boolean_val": {"value": true}}
```

### `foreign_tbl_comments`

- **Display name:** Comments on Foreign Tables
- **Phase:** BETA
- **Status:** ✅ 200

Allows fetching in comments from the foreign systems.

```json
{"boolean_val": {"value": true}}
```

### `fstore_decl_fw`

- **Display name:** Feature Views (Batch)
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Opt in to the new Feature Views for defining batch features in Databricks Feature Store. You can still use the legacy feature table pipelines alongside the new framework. Note: This preview currently supports batch features only; streaming features is available in a separate preview.

```json
{"boolean_val": {"value": true}}
```

### `fstore_decl_strm_fw`

- **Display name:** Feature Store Streaming Feature Views
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Enables streaming Feature Views in Databrick's Feature Store. 

```json
{"boolean_val": {"value": true}}
```

### `full_screen_genie_code`

- **Display name:** Full Page Genie Code
- **Phase:** GA
- **Status:** 🟡 404

The "Full Page" mode and toggle of Genie Code. When enabled, customers have an option to open Genie Code in a Full Page UI with assets that can be opened in soft tabs. 

```json
{"boolean_val": {"value": true}}
```

### `full_text_search_index`

- **Display name:** SQL: Full-Text Search Index for UC managed tables
- **Phase:** BETA
- **Status:** 🟡 404

Use the CREATE SEARCH INDEX SQL statement to create full-text search indexes on text columns of UC managed Delta Lake or Iceberg tables. The index accelerates SQL queries with selective, substring and word matching WHERE predicates.

```json
{"boolean_val": {"value": true}}
```

### `gdrive_connector`

- **Display name:** Lakeflow Connect for Google Drive
- **Phase:** GA
- **Status:** ✅ 200

Ingest from Google Drive with a simple and efficient connector. **Requires DBR 17.3+**

```json
{"boolean_val": {"value": true}}
```

### `generic_lfc`

- **Display name:** Lakeflow Connect Community Connectors
- **Phase:** BETA
- **Status:** ✅ 200

This feature enables a wide range of OSS connectors built on the Python Data Source API and SDP, covering sources beyond managed ingestion and enabling users to build custom connectors.

```json
{"boolean_val": {"value": true}}
```

### `genie_bi_migration`

- **Display name:** Import from External BI to AI/BI
- **Phase:** PUBLIC_PREVIEW
- **Status:** 🟡 404

This preview allows users to import data models & dashboards from external BI tools as AI/BI Metric Views and Dashboards via Genie Code

```json
{"boolean_val": {"value": true}}
```

### `genie_bring_your_own_volume`

- **Display name:** Analyze Files in Volumes with Genie Agents
- **Phase:** BETA
- **Status:** 🟡 404

Analyze your documents and files with Genie Agents.  This feature allows you to directly add files in Unity Catalog Volumes to a Genie Agent.

```json
{"boolean_val": {"value": true}}
```

### `genie_chat_sharing`

- **Display name:** Genie Chat Sharing
- **Phase:** GA
- **Status:** ✅ 200

Share Genie space chats with space managers by default, and allow users to share their chats with others in the Databricks account.

```json
{"boolean_val": {"value": true}}
```

### `genie_code_automations`

- **Display name:** Genie Code Scheduled Tasks
- **Phase:** BETA
- **Status:** 🟡 404

Run Genie Code agents automatically on a recurring schedule.

```json
{"boolean_val": {"value": true}}
```

### `genie_deep_research`

- **Display name:** Genie Agent
- **Phase:** GA
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

### `genie_one_file_upload`

- **Display name:** Genie One File Upload
- **Phase:** BETA
- **Status:** 🟡 404

Enable Genie One users to upload files to their chats.

```json
{"boolean_val": {"value": true}}
```

### `genie_one_user_memory`

- **Display name:** Genie One Memory
- **Phase:** BETA
- **Status:** 🟡 404

When enabled, Genie remembers context across conversations and can save, view, and delete memories to personalize its responses. Memories are not shared across users.

```json
{"boolean_val": {"value": true}}
```

### `genie_ontology_snippets`

- **Display name:** Genie Ontology snippets
- **Phase:** PUBLIC_PREVIEW
- **Status:** 🟡 404

The Genie Ontology automatically generates and maintains a map of your data and business, extracting and refreshing ontology snippets from tables, queries, dashboards, and other sources. When you ask a question, Genie finds the most relevant permission-gated snippets to improve accuracy, latency, and explainability.

```json
{"boolean_val": {"value": true}}
```

### `genie_spaces_agentic_api`

- **Display name:** Agent Mode APIs for Genie Agents
- **Phase:** BETA
- **Status:** 🟡 404

APIs let you run Agent mode programmatically instead of through the Databricks UI for Genie Agents

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

### `github_connector`

- **Display name:** Lakeflow Connect for Github
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from Github with a simple and efficient connector.

```json
{"boolean_val": {"value": true}}
```

### `gmail_connector`

- **Display name:** Lakeflow Connect for Gmail
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Gmail with a simple and efficient connector

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

### `google_search_console_connector`

- **Display name:** Lakeflow Connect for Google Search Console
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Google Search Console using a simple and efficient connector.

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
- **Phase:** GA
- **Status:** ✅ 200

Iceberg V3 adds performance and feature capabilities to Delta UniForm and Managed Iceberg tables. These features include deletion vectors for efficient row-level deletes, row lineage for incremental processing, and the Variant data type for semi-structured data.

```json
{"boolean_val": {"value": true}}
```

### `integrated_cdc_mysql_connector`

- **Display name:** LakeFlow Connect for Integrated Cdc MySQL Connector
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from MySQL databases using Integrated Cdc Managed Ingestion Pipeline.

```json
{"boolean_val": {"value": true}}
```

### `integrated_cdc_oracle_connector`

- **Display name:** LakeFlow Connect for Integrated Cdc Oracle Connector
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Oracle databases using Integrated Cdc Managed Ingestion Pipeline.

```json
{"boolean_val": {"value": true}}
```

### `integrated_cdc_sql_server_connector`

- **Display name:** LakeFlow Connect for Integrated Cdc Sql Server Connector
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from SQL Server databases using Integrated Cdc Managed Ingestion Pipeline.

```json
{"boolean_val": {"value": true}}
```

### `ip_functions`

- **Display name:** Ip Functions
- **Phase:** PUBLIC_PREVIEW
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

### `jdbc_oauth_m2m_connector`

- **Display name:** OAuth M2M Support for Custom JDBC on UC Compute
- **Phase:** BETA
- **Status:** 🟡 404

This feature enables users to connect to data sources using a custom JDBC driver through the Spark Data Source API. The new Unity Catalog (UC) Connection of type JDBC utilizes OAuth M2M authentication and runs a user-provided JDBC driver powered by Lakeguard isolation on UC-supported compute: serverless, standard, and dedicated clusters with Databricks Runtime (DBR) 18.1 or higher.

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

### `job_cluster_default_auto_data_security_mode`

- **Display name:** Job cluster default auto data security mode
- **Phase:** BETA
- **Status:** 🟡 404

When enabled, job clusters default to AUTO data security mode.

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

### `kafka_connector`

- **Display name:** Lakeflow Connect for Kafka
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Apache Kafka with a simple and efficient streaming connector.

```json
{"boolean_val": {"value": true}}
```

### `lakebase_accel_sync`

- **Display name:** LTAP Direct Writes
- **Phase:** BETA
- **Status:** ✅ 200

Bulk writes data directly to Lakebase storage to power faster synced table loads and refreshes.

```json
{"boolean_val": {"value": true}}
```

### `lakebase_cdf`

- **Display name:** Lakebase CDF
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Lakebase-native export of the Postgres Change Data Feed to Delta tables. Supports scale to zero with Lakebase Autoscaling.

```json
{"boolean_val": {"value": true}}
```

### `lakebase_insights`

- **Display name:** Lakebase Advanced Postgres Telemetry
- **Phase:** BETA
- **Status:** 🟡 404

Enables Lakebase Postgres telemetry capture — query stats, wait events, plans, and schema changes land as Delta tables in your Unity Catalog, with a built-in dashboard. Genie can access this telemetry to help diagnose and fix issues.

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

### `lakebase_search`

- **Display name:** Lakebase Search
- **Phase:** BETA
- **Status:** 🟡 404

This preview introduces scalable vector search and native BM-25 fulltext search to Lakebase.

```json
{"boolean_val": {"value": true}}
```

### `lakebridge`

- **Display name:** Agentic Converter in Genie Code
- **Phase:** BETA
- **Status:** 🟡 404

Enable the Agentic Converter in Genie Code to migrate workloads from third party data warehouses to Databricks. The converter uses Genie Code, Databricks' AI coding agent, to translate proprietary code to open ANSI SQL. Currently, it supports T-SQL, Snowflake, Redshift, Oracle, BigQuery, and Teradata. Genie Code must be enabled in your workspace to enroll in the Agentic Converter Beta.

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
- **Phase:** GA
- **Status:** ✅ 200

Enable Lakeflow Connect query based connectors to ingest from Lakehouse federation sources.

```json
{"boolean_val": {"value": true}}
```

### `lakeflow_runs_list`

- **Display name:** Unified Runs List
- **Phase:** GA
- **Status:** ✅ 200

You can now view all of your Jobs and Pipeline executions in the updated Runs list. Track all of your pipeline executions in one place and filter by status, time, run-as user, and error codes in real time. Spot trends using the visualization and summary of the current top five error codes.

```json
{"boolean_val": {"value": true}}
```

### `lakehouse_replay`

- **Display name:** Lakehouse Replay
- **Phase:** PUBLIC_PREVIEW
- **Status:** ✅ 200

Databricks automatically replays read‑only serverless workloads in a safe shadow environment so regressions are detected and fixed before they impact production workloads.

```json
{"boolean_val": {"value": true}}
```

### `lf_pipelines_auth`

- **Display name:** Lakeflow Pipelines Editor
- **Phase:** GA
- **Status:** ✅ 200

Purpose-built IDE for declarative data pipelines. Designed to support everything you need for building pipelines in one place: code-first authoring, folder-based organization, selective execution, data previews, and pipeline graphs. Integrated with the Databricks Platform, supporting version control, code reviews, and scheduling.

```json
{"boolean_val": {"value": true}}
```

### `llm_proxy_partner_powered`

- **Display name:** Partner-powered AI features
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

### `managed_memory_agents`

- **Display name:** Managed Memory for Agents
- **Phase:** BETA
- **Status:** 🟡 404

Enable Managed Memory APIs and Memory Store Unity Catalog Securable for Custom Agents.

```json
{"boolean_val": {"value": true}}
```

### `marketo_connector`

- **Display name:** Lakeflow Connect for Marketo
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Marketo with a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `marketplace_app_install`

- **Display name:** Marketplace - Install Databricks Apps
- **Phase:** PUBLIC_PREVIEW
- **Status:** 🟡 404

Allow workspace admins to install databricks apps from Databricks Marketplace.

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

### `metadata_automations`

- **Display name:** Tag Automations
- **Phase:** BETA
- **Status:** 🟡 404

Enables admins to automate tag assignment and removal on UC tables and volumes at scale. Admins write their business tagging rules in natural language and apply it to a catalog or selected schemas. Supports UC permission guardrails, dry run review, and post-run observability.

```json
{"boolean_val": {"value": true}}
```

### `mlflow_custom_trace_view`

- **Display name:** MLflow Custom Trace View
- **Phase:** BETA
- **Status:** 🟡 404

This controls the feature for Custom Trace View in MLflow

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

### `model_triggers`

- **Display name:** Model update job triggers
- **Phase:** BETA
- **Status:** ✅ 200

Model update job triggers are a new type of job trigger that responds to UC model metadata events, such as a new model is created, or a new model version is created, or a model alias is set on a model version. Model update job triggers allow arbitrary jobs to be triggered based on the occurence of these events at varying scopes, including events happening under a specific model, a specific schema, or the whole metastore.

```json
{"boolean_val": {"value": true}}
```

### `monday_com_connector`

- **Display name:** Lakeflow Connect for Monday.com
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Monday.com with a simple and efficient connector

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

### `netskope_logs_connector`

- **Display name:** Lakeflow Connect for Netskope Logs
- **Phase:** BETA
- **Status:** 🟡 404

Ingest Netskope Logs with a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `netsuite_connector`

- **Display name:** Lakeflow Connect for Netsuite
- **Phase:** GA
- **Status:** ✅ 200

Ingest NetSuite data with a simple and efficient connector. Available via API only.

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

### `object_metadata_column`

- **Display name:** Object Metadata Column
- **Phase:** PUBLIC_PREVIEW
- **Status:** 🟡 404

Introduces the _object_metadata hidden column that exposes cloud object-level properties for each file read by a file-based data source.

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

### `omnigents`

- **Display name:** Omnigent
- **Phase:** BETA
- **Status:** 🟡 404

Gates the Omnigent product.

```json
{"boolean_val": {"value": true}}
```

### `one_chat`

- **Display name:** New chat experience in Genie
- **Phase:** GA
- **Status:** ✅ 200

Chat with Databricks agents and third-party data sources from a single conversation in Genie, governed by Unity Catalog.

```json
{"boolean_val": {"value": true}}
```

### `openai_connector`

- **Display name:** Lakeflow Connect for OpenAI 
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from OpenAI with a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `operationalEmailCustomRecipient`

- **Display name:** Operational emails
- **Phase:** GA
- **Status:** ✅ 200

Additional recipient for this workspace's operational emails. When set, Databricks delivers these emails to both the workspace admins and this address. Available on AWS and GCP.

```json
{"email": "sample_string"}
```

### `otel_collector`

- **Display name:** OpenTelemetry on Databricks
- **Phase:** GA
- **Status:** ✅ 200

Enables ingestion of OpenTelemetry data into Unity Catalog managed Delta tables for MLflow Tracing.

```json
{"boolean_val": {"value": true}}
```

### `otel_model_serving`

- **Display name:** OpenTelemetry for Databricks Model Serving
- **Phase:** GA
- **Status:** ✅ 200

OpenTelemetry log/span/metric persistence for model serving endpoints.

```json
{"boolean_val": {"value": true}}
```

### `outlook_connector`

- **Display name:** Lakeflow Connect for Outlook
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from Outlook with a simple and efficient connector.

```json
{"boolean_val": {"value": true}}
```

### `pagerduty_connector`

- **Display name:** Lakeflow Connect for PagerDuty
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from PagerDuty using a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `pat_autoscoping`

- **Display name:** Personal access tokens auto-scoping
- **Phase:** BETA
- **Status:** 🟡 404

Auto-scoping narrows token permissions to match actual API usage, which reduces the risk of over-privileged tokens. New tokens with a lifetime longer than 30 days have auto-scoping on by default. Owners can turn it off or select 'all-apis' at creation. After 30 days, enabled tokens are scoped based on observed API usage. Existing tokens with 'all-apis' scope are backfilled based on historical usage. Admins and token owners are notified and can review and modify auto-assigned scopes at any time.

```json
{"boolean_val": {"value": true}}
```

### `pendo_connector`

- **Display name:** Lakeflow Connect for Pendo
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Pendo using a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `pipeline_parameters`

- **Display name:** Spark Declarative Pipeline Parameters
- **Phase:** BETA
- **Status:** ✅ 200

Write extensible, maintainable pipeline code by parameterizing Spark Declarative Pipelines.

```json
{"boolean_val": {"value": true}}
```

### `pipelines_user_facing_testing`

- **Display name:** Pipelines Unit Testing
- **Phase:** BETA
- **Status:** 🟡 404

Lakeflow Spark Declarative Pipelines (SDP) now supports writing Python unit tests in the web-based Lakeflow Editor. Validate Python or SQL transformation logic using mock data with isolated test execution, flexible test scope (individual tables or full pipelines), and standard pytest assertions for result validation.

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

### `query_perf_insights`

- **Display name:** Query performance insights
- **Phase:** BETA
- **Status:** ✅ 200

When queries run, Databricks might return insights that identify opportunities to improve performance. 

```json
{"boolean_val": {"value": true}}
```

### `rabbitmq_connector`

- **Display name:** Lakeflow Connector for RabbitMQ
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from RabbitMQ with a simple and efficient streaming connector.

```json
{"boolean_val": {"value": true}}
```

### `read_metadata_privilege`

- **Display name:** Advanced metadata viewing privilege ('READ METADATA')
- **Phase:** GA
- **Status:** 🟡 404

Enables the ability to grant the READ METADATA privilege on Unity Catalog objects. Users with this privilege can access all associated metadata for an object. This includes sensitive information such as permissions and ABAC policies, which are otherwise restricted to the object owner or users holding the MANAGE privilege.

```json
{"boolean_val": {"value": true}}
```

### `reddit_ads_connector`

- **Display name:** Lakeflow Connect for Reddit Ads
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Reddit Ads with a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `remote_ds_writes`

- **Display name:** Remote data sources write support on serverless compute
- **Phase:** GA
- **Status:** ✅ 200

Enables the write support on serverless compute for the remote data sources. The feature works only for writes through the DataFrame API. This feature doesnt include Lakehouse Federation writes.

```json
{"boolean_val": {"value": true}}
```

### `remote_query_tvf`

- **Display name:** Enables remote query table-valued function (remote_query).
- **Phase:** GA
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

### `sendgrid_connector`

- **Display name:** Lakeflow Connect for SendGrid
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from SendGrid with a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `serverless_compute`

- **Display name:** Serverless Compute Access Control
- **Phase:** GA
- **Status:** 🟡 404

Manage access to serverless compute for Notebooks, Jobs, and Pipelines. Account admins can control which users, groups, and service principals can use serverless resources.

```json
{"boolean_val": {"value": true}}
```

### `serverless_jar_jobs`

- **Display name:** Serverless JARs
- **Phase:** GA
- **Status:** ✅ 200

Deploy Scala and Java jobs as Jars on serverless compute with faster startup, auto-scaling, and no cluster management

```json
{"boolean_val": {"value": true}}
```

### `serverless_workload_observability`

- **Display name:** Improved Lakeflow Performance Observability
- **Phase:** BETA
- **Status:** 🟡 404

Improved Lakeflow Performance Observability includes aggregates of query metrics and insights on the workload level, support for timeline view for single task runs and other improvements.

```json
{"boolean_val": {"value": true}}
```

### `sf_mktg_connector`

- **Display name:** Lakeflow Connect for Salesforce Marketing Cloud
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from Salesforce Marketing Cloud with a simple and efficient connector.

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
- **Phase:** GA
- **Status:** ✅ 200

Ingest files from SFTP server using Auto Loader. Requires DBR 17.3+.

```json
{"boolean_val": {"value": true}}
```

### `sharepoint_connector`

- **Display name:** Lakeflow Connect for Sharepoint
- **Phase:** GA
- **Status:** ✅ 200

Ingest Sharepoint data with a simple and efficient connector. Available via API.

```json
{"boolean_val": {"value": true}}
```

### `shield_csp_enablement_ws_db`

- **Display name:** Compliance security profile
- **Phase:** GA
- **Status:** ✅ 200

Controls whether the compliance security profile is enabled for this workspace. The compliance security profile provides a highly secure baseline (additional monitoring, a hardened compute image, enforced instance types for inter-node encryption, and other controls) that makes it easier to meet and manage applicable compliance standards. Enabling it also permanently enables enhanced security monitoring and automatic cluster update on the workspace, and adds the Enhanced Security and Compliance add-on.

```json
{"is_enabled": true,"compliance_standards": ["COMPLIANCE_STANDARD_UNSPECIFIED"],"force": true}
```

### `shield_esm_enablement_ws_db`

- **Display name:** Enhanced security monitoring
- **Phase:** GA
- **Status:** ✅ 200

Controls whether enhanced security monitoring is enabled for this workspace. Enhanced security monitoring provides a hardened compute image and additional security monitoring agents (file integrity monitoring, antivirus, and vulnerability scanning) that generate reviewable log rows. It applies to classic compute plane resources only, not serverless. If the compliance security profile is enabled on the workspace, this setting is permanently enforced.

```json
{"is_enabled": true}
```

### `smartsheet_connector`

- **Display name:** Lakeflow Connect for Smartsheet
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from Smartsheet with a simple and efficient connector.

```json
{"boolean_val": {"value": true}}
```

### `square_connector`

- **Display name:** Lakeflow Connect for Square
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Square with a simple and efficient connector

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

### `strac_connector`

- **Display name:** Lakeflow Connect for Strac
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Strac with a simple and efficient connector

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

### `time_type`

- **Display name:** Time data type
- **Phase:** BETA
- **Status:** 🟡 404

Adds the support for TIME data type to Spark. Applies to DBR 18.2+ on all SQL Warehouses, Serverless GC and Standard compute.

```json
{"boolean_val": {"value": true}}
```

### `tut_delta_sharing_ws`

- **Display name:** Table Update Triggers on OpenSharing (Recipient)
- **Phase:** BETA
- **Status:** ✅ 200

Recipient workspace-level preview for Table Update Triggers on OpenSharing tables. When enabled for a workspace, users in that workspace can create Table Update Triggers (TUTs) on tables shared with them through OpenSharing. Requires the provider account to have the tut_delta_sharing preview enabled.

```json
{"boolean_val": {"value": true}}
```

### `uc_scala_udfs`

- **Display name:** Scala and Java UDFs in Unity Catalog
- **Phase:** GA
- **Status:** ✅ 200

Support for Scala and Java UDFs in Unity Catalog on Serverless compute (Serverless GC and DBSQL)

```json
{"boolean_val": {"value": true}}
```

### `uc_secrets`

- **Display name:** Secrets in Unity Catalog
- **Phase:** GA
- **Status:** ✅ 200

Enables creating and managing secrets across workspaces and using Unity Catalog. When enabled, users with CREATE SECRET permissions on a schema can create secrets (e.g., to store passwords or other sensitive credentials for authentication) and grant others users READ access to those. The owner of the secret and any user with READ access can then retrieve the secret value using dbutils.secrets.get(catalog, schema, secret_name), or the REST API. Secrets are stored encrypted in Databricks, and secret redaction is applied to prevent accidental exposure of the secret value. This feature is available on Databricks Runtime 17.3 LTS and above.

```json
{"boolean_val": {"value": true}}
```

### `uc_udf_dependencies`

- **Display name:** Enhanced Python UDFs in Unity Catalog
- **Phase:** GA
- **Status:** ✅ 200

Added support for custom dependencies from PyPI in UC Python UDFs (Databricks Runtime 16.2 and above), UC service credentials and batched execution (both Databricks Runtime 16.3 and above) to Python UDFs in Unity Catalog. Available on SQL warehouses (pro and serverless), serverless jobs and notebooks and UC-enabled clusters. To leverage UC Python UDF environments on serverless SQL, "Enable networking for isolated workloads in serverless SQL warehouses" must be enabled as well. Enabling this preview on serverless warehouses, jobs, and notebooks takes up to 24 hours. This preview also enables Databricks Connect Python UDF dependencies (Databricks Runtime 16.4 and above), see the docs here: https://docs.databricks.com/aws/en/dev-tools/databricks-connect/python/udf

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
- **Phase:** GA
- **Status:** ✅ 200

Variant shredding extracts commonly occurring fields in semi-structured data into separate columns during writes. This significantly improves read performance, but incurs some overhead on writes. Variant shredding is supported in DBR 17.3 and above.

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
- **Phase:** GA
- **Status:** ✅ 200

Vector Search High QPS enables significantly higher real-time query throughput for Vector Search by scaling endpoint capacity via replication – so you can serve more concurrent search requests without standing up or load‑balancing across multiple endpoints. In this phase, you manually increase QPS capacity by adjusting endpoint replication and monitor performance using available metrics; support for automatic scaling is planned for later releases.

```json
{"boolean_val": {"value": true}}
```

### `veeva_connector`

- **Display name:** Lakeflow Connect for Veeva
- **Phase:** BETA
- **Status:** ✅ 200

Ingest from Veeva with a simple and efficient connector.

```json
{"boolean_val": {"value": true}}
```

### `vs_autoeval`

- **Display name:** AI Search: Quality Evaluation
- **Phase:** BETA
- **Status:** 🟡 404

AI Search Quality Evaluation enables automatic search quality evaluation for AI Search indexes, using synthetic query generation and LLM-based relevance scoring to measure recall, precision, NDCG, and other retrieval metrics.

```json
{"boolean_val": {"value": true}}
```

### `vs_full_text`

- **Display name:** AI Search: Full-Text Search
- **Phase:** BETA
- **Status:** ✅ 200

Users can create pure full-text indexes and run full-text search queries directly through the UI, Python SDK, or REST APIs. This bypasses ANN or vector search entirely and is especially valuable for use cases that require precise keyword matching.

```json
{"boolean_val": {"value": true}}
```

### `warehouse_stmt_tmout`

- **Display name:** Warehouse Statement Timeout
- **Phase:** BETA
- **Status:** ✅ 200

Warehouse Statement Timeouts allow users to set a configurable value that automatically terminates queries
   after a specified number of seconds to prevent long-running operations from consuming resources indefinitely.
   This timeout setting can be configured through the SQL Warehouse APIs to suit your performance and resource management needs.

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
- **Phase:** GA
- **Status:** ✅ 200

Provides deeper visibility into SQL Warehouse usage by showing why a warehouse is running even when no queries are visible. The SQL Warehouse monitoring UI includes an activity details view in the running clusters chart, showing query execution and client-driven activity, such as open sessions or query fetching.

```json
{"boolean_val": {"value": true}}
```

### `wiz_alogs_connector`

- **Display name:** Lakeflow Connect for Wiz Audit Logs
- **Phase:** BETA
- **Status:** 🟡 404

Ingest audit logs from Wiz using a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `workiva_connector`

- **Display name:** Lakeflow Connect for Workiva
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Workiva with a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `wsfs_git_cli`

- **Display name:** Git CLI support for Git folders
- **Phase:** PUBLIC_PREVIEW
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

### `zerobus_kafka_endpoint`

- **Display name:** Zerobus Ingest Kafka Endpoint
- **Phase:** BETA
- **Status:** 🟡 404

Zerobus Kafka ingestion endpoint.

```json
{"boolean_val": {"value": true}}
```

### `zerobus_rescue_column_json`

- **Display name:** Zerobus Ingest Rescue Column JSON
- **Phase:** BETA
- **Status:** 🟡 404

Zerobus "rescue column" feature support for JSON ingestion.

```json
{"boolean_val": {"value": true}}
```

### `zip_connector`

- **Display name:** Lakeflow Connect for Zip
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Zip with a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

### `zoho_books_connector`

- **Display name:** Lakeflow Connect for Zoho Books
- **Phase:** BETA
- **Status:** 🟡 404

Ingest from Zoho Books with a simple and efficient connector

```json
{"boolean_val": {"value": true}}
```

