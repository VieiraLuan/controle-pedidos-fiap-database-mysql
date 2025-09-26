terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = var.resource_group_name
    storage_account_name  = var.storage_account_name
    container_name        = var.container_name
    key                   = "mysql.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}