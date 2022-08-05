module "permissions" {
  # source = "../terraform-azurerm-permissions"
  source = "git::git@git.signintra.com:bdp/azure/terraform-azurerm-permissions?ref=v1.1.0"
}

resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = lower("${var.topic}-${var.stage}-${var.resource_type}-${var.application}-${var.location_code}")
  tags     = var.tags
}

resource "azurerm_role_assignment" "uc_permission" {
  for_each             = var.enable_uc_permissions ? module.permissions.all_permissions[var.resource_type][var.stage] : {}
  scope                = azurerm_resource_group.rg.id
  role_definition_name = each.value
  principal_id         = local.uc_group_mapping[each.key]
}
