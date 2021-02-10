resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = lower(var.name)
  tags     = var.tags
}
