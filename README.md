# azure-snowflake-data-pipeline-demo
A structured reference architecture for integrating Microsoft Azure services with Snowflake data warehouse.

This repository provides a foundational reference for integrating Microsoft Azure cloud ecosystem with Snowflake Data Cloud using modern Data Engineering best practices.

## Overview

The goal of this project is to demonstrate end-to-end data pipelines, automation scripts, and configuration templates for cloud data architecture.

### Key Components

- **Microsoft Azure**: Azure Blob Storage, Azure Data Factory (ADF), Event Grid
- **Snowflake**: Data Warehousing, Snowpipe, Stage & Pipe configurations
- **Infrastructure as Code (IaC)**: Terraform / Bicep setups for automated provisioning
- **Data Engineering**: Python ETL scripts and SQL orchestration

## Project Structure

```text
├── terraform/
│   ├── azure-core-infrastructure.tf
│   └── snowflake-data-warehouse.tf
├── sql/
│   ├── dea_c01_pipeline_setup.sql
│   ├── dp300_database_performance.sql
│   └── dp600_fabric_analytics.sql
├── python/
│   ├── ai102_cognitive_enrichment.py
│   ├── ai900_ml_inference_demo.py
│   └── dp900_data_exploration.py
└── docs/
    ├── architecture_overview.md
    ├── cofc02_cost_optimization.md
    └── study_notes_index.md
