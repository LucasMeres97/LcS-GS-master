provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.77.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-lulu"
    storage_account_name = "lcs123"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
