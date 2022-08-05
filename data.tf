locals {
  uc_group_mapping = zipmap(keys(module.permissions.all_application_mappings[var.application]), data.azuread_groups.uc_groups.object_ids)
}

data "azuread_groups" "uc_groups" {
  display_names = values(module.permissions.all_application_mappings[var.application])
}
