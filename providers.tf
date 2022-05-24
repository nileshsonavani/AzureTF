terraform {
  required_version = ">=0.12"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.41.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-azure-tf"
    storage_account_name = "stg1azuretf"
    container_name = "terraform-state"
    key = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "8cb6a6a8-c9a0-48fa-baf5-9da16f24ee01"
}


