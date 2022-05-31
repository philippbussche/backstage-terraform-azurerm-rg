resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = lower("${var.topic}-${var.stage}-rg-${var.application}-${var.location_code}")
  tags     = var.tags
}
