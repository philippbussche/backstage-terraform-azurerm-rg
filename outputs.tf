output "id" {
  value = azurerm_resource_group.rg.id
}

output "name" {
  value = split("/", azurerm_resource_group.rg.id)[4]
}

output "subscription_id" {
  value = split("/", azurerm_resource_group.rg.id)[1]
}

output "location" {
  value = var.location
}
