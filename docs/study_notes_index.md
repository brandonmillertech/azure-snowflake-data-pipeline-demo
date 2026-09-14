# Technical Reference Notes & Module Index

This document serves as an index map for the configuration scripts and architectural modules contained within this repository.

## Module Breakdown Index

| File Path | Technology Domain | Core Concepts Covered |
| :--- | :--- | :--- |
| `terraform/azure-core-infrastructure.tf` | Microsoft Azure | Resource Groups, ADLS Gen2, Storage Containers |
| `terraform/snowflake-data-warehouse.tf` | Snowflake | Databases, Virtual Warehouses, Schemas |
| `sql/dea_c01_pipeline_setup.sql` | Snowflake | External Stages, Parquet File Formats, Ingestion DDL |
| `sql/dp300_database_performance.sql` | Snowflake | Query History Inspection, Warehouse Metrics |
| `sql/dp600_fabric_analytics.sql` | Microsoft Azure / Analytics | Dimensional Modeling & Customer Analytics DDL |
| `python/ai102_cognitive_enrichment.py` | Microsoft Azure | AI Services integration patterns & text enrichment |
| `python/ai900_ml_inference_demo.py` | Microsoft Azure | Baseline machine learning inference structure |
| `python/dp900_data_exploration.py` | Python / Data Platform | Exploratory data analysis with Pandas |
| `docs/cofc02_cost_optimization.md` | Snowflake | Auto-suspend tuning, clustering, resource monitors |

## Usage Instructions
Reference individual scripts inside each subdirectory to adapt configuration parameters for non-production sandbox testing.
