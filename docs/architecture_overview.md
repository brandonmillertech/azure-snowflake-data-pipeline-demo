# Cloud Data Architecture Overview

## Hybrid Integration: Microsoft Azure & Snowflake

This reference architecture illustrates the design patterns for ingesting, processing, and analyzing enterprise datasets across Microsoft Azure cloud services and Snowflake Data Cloud.

### High-Level Data Flow

1. **Ingestion Layer**: Raw structured and semi-structured files are landed in Azure Data Lake Storage (ADLS Gen2).
2. **Orchestration & Enrichment**: Azure Data Factory (ADF) or Python worker scripts trigger lightweight transformations and AI cognitive enhancements.
3. **Storage & Warehousing**: Data is staged into Snowflake external/internal stages and loaded into curated analytical tables.
4. **Governance & Performance**: Resource monitors, clustering keys, and auto-suspend policies manage operational costs and query SLAs.

### Component Mapping
- **Storage**: Azure Blob / ADLS Gen2 $\rightarrow$ Snowflake Internal/External Stages
- **Compute**: Azure Functions / Databricks / ADF $\rightarrow$ Snowflake Virtual Warehouses
- **Security**: Azure Managed Identities $\rightarrow$ Snowflake Key Pair / OAuth Integration
