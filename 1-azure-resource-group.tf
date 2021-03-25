terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  required_version = ">= 0.13"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "arg" {
  name     = "${var.prefix}-resource-group"
  location = var.location

  tags = {
    owner = var.owner
  }
}
