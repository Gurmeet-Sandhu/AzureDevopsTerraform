terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.91.0"
    }
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

resource "azurerm_resource_group" "another-rg" {
  name     = "another-resourcegroup-test"
  location = "westus2"
}