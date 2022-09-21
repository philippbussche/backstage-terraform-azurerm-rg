# Azure Resource Group

## Usage
Module compatible with Terraform `0.12`
```hcl

module "rg" {
  source = "git::git@git.com:xxx/azure/terraform-azurerm-rg.git?ref=x.x.x"

  location_code = module.map.region_map[var.location]
  location      = var.location
  topic         = var.topic
  stage         = var.stage
  application   = var.application
  tags          = local.tags
}

```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.31 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_permissions"></a> [permissions](#module\_permissions) | git::git@git.com:xxx/xxx/terraform-azurerm-permissions | v1.1.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.uc_permission](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azuread_groups.uc_groups](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/groups) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | n/a | `string` | n/a | yes |
| <a name="input_enable_uc_permissions"></a> [enable\_uc\_permissions](#input\_enable\_uc\_permissions) | n/a | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | Resource Group Location | `string` | `"westeurope"` | no |
| <a name="input_location_code"></a> [location\_code](#input\_location\_code) | n/a | `string` | n/a | yes |
| <a name="input_resource_type"></a> [resource\_type](#input\_resource\_type) | n/a | `string` | `"rg"` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | n/a | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Environment tag for the resource group (i.e. 'Production') | `map(string)` | `{}` | no |
| <a name="input_topic"></a> [topic](#input\_topic) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_location"></a> [location](#output\_location) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_subscription_id"></a> [subscription\_id](#output\_subscription\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


# pre-commit hook

this repo is using pre-commit hook to know more [click here](https://github.com/antonbabenko/pre-commit-terraform)
to manually trigger use this command

```
pre-commit install
pre-commit run --all-files
```
