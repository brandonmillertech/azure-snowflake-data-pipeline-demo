# Azure Core Infrastructure Provisioning Reference (Storage & Resource Group)
terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-enterprise-data-pipeline"
  location = "East US"
}

resource "azurerm_storage_account" "sa" {
  name                     = "stdataengpipeline01"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true # Enable Hierarchical Namespace for ADLS Gen2
}

resource "azurerm_storage_container" "container" {
  name                  = "landing-zone"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
