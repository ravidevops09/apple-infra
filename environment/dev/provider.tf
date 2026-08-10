terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ravi-rg"
    storage_account_name = "ravistorage1010"
    container_name       = "ravi-container"
    key                  = "dev.terraform.tfstate"
  }
}



provider "azurerm" {
  features {

  }
}