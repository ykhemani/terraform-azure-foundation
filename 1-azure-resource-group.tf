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
