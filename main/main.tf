terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.91.0"
    }
  }
  
  backend "azurerm" {
    resource_group_name  = "terraform-rg"
    storage_account_name = "gstfaccount"
    container_name       = "gstfcontainer"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "resourcegroup-test"
  location = "westus2"
}
