terraform {
  required_providers {
    azurerm            = {
      source           = "hashicorp/azurerm"
    }
  }
  required_version     = ">= 0.13"
}

provider "azurerm" {
  features {}
}

resource azurerm_resource_group arg {
  name                 = "${var.prefix}-resource-group"
  location             = var.location

  tags                 = {
    owner              = var.owner
  }
}

resource azurerm_virtual_network vnet {
  name                 = "${var.prefix}-vnet"
  resource_group_name  = azurerm_resource_group.arg.name
  location             = azurerm_resource_group.arg.location
  address_space        = var.vnet_address_space

  tags                 = {
    owner              = var.owner
  }
}

resource azurerm_subnet subnet0 {
  name                 = "${var.prefix}-subnet0"
  resource_group_name  = azurerm_resource_group.arg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet0_address_prefixes
}