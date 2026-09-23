resource "azurerm_resource_group" "example" {
  name     = "rg-example-terraform"
  location = "brazilsouth"

  tags = {
    Name = "Hello World"
  }
}