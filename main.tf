resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "brazilsouth"

  tags = {
    Name = "Hello World"
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name = "vnet-example"
  location = "brazilsouth"
  resource_group_name = azurerm_resource_group.rg.name
  address_space = ["10.0.0.0/16"]
}