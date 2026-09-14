-- Reference DDL and Stage setup for Snowflake Data Engineering Practice (DEA-C01 Module)
CREATE DATABASE IF NOT EXISTS ENTERPRISE_DATA_HUB;
USE DATABASE ENTERPRISE_DATA_HUB;
CREATE SCHEMA IF NOT EXISTS RAW_STAGE;
USE SCHEMA RAW_STAGE;

-- External stage pointing to Azure Blob Storage
CREATE OR REPLACE STAGE AZURE_BLOB_STAGE
  URL = 'azure://<your-storage-account>.blob.core.windows.net/data-container'
  CREDENTIALS = (AZURE_SAS_TOKEN = '<your-sas-token>');

-- File format definition
CREATE OR REPLACE FILE FORMAT PARQUET_FORMAT
  TYPE = PARQUET;
