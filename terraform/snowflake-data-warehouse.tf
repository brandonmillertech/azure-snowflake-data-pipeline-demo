# Snowflake Infrastructure Provisioning Reference
terraform {
  required_version = ">= 1.5.0"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.89"
    }
  }
}

resource "snowflake_database" "db" {
  name    = "ENTERPRISE_DATA_HUB"
  comment = "Core data warehouse database for reference architecture"
}

resource "snowflake_warehouse" "wh" {
  name           = "COMPUTE_WH_XS"
  warehouse_size = "XSMALL"
  auto_suspend   = 60
  initially_suspended = true
}

resource "snowflake_schema" "schema" {
  database = snowflake_database.db.name
  name     = "RAW_STAGE"
}
