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
├── terraform/          # Infrastructure deployment code
├── sql/                # Snowflake DDL and pipeline scripts
├── python/             # Data processing and extraction scripts
└── docs/               # Architecture diagrams and guide notes

├── docs/
│       ├── snowflake-deac01.md     # Snowflake DEA-C01 
│       ├── snowflake-cofc02.md     # Snowflake COF-C02 
│       └── azure-data-ai.md        # Microsoft Azure （AI-102, AI-900, DP-900, DP-300, DP-600）
