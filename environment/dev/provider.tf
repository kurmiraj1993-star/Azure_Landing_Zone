terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "kp1"
    storage_account_name = "krishn20262027"
    container_name       = "container1"
    key                  = "tfstste"
  }
}

provider "azurerm" {
  features {}
}