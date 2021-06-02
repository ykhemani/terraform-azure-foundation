# reference: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group
resource "azurerm_resource_group" "arg" {
  name     = "${var.prefix}-resource-group"
  location = var.location

  tags = {
    owner     = var.owner
    se-region = var.se-region
    purpose   = var.purpose
    ttl       = var.ttl
    terraform = "true"
  }
}

# reference: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-vnet"
  resource_group_name = azurerm_resource_group.arg.name
  location            = azurerm_resource_group.arg.location
  address_space       = var.vnet_address_space

  tags = {
    owner     = var.owner
    se-region = var.se-region
    purpose   = var.purpose
    ttl       = var.ttl
    terraform = "true"
  }
}

# reference: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet
resource "azurerm_subnet" "subnet0" {
  name                 = "${var.prefix}-subnet0"
  resource_group_name  = azurerm_resource_group.arg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet0_address_prefixes
}
