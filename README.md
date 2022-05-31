# Azure LB

## Usage
Module compatible with Terraform `0.12`
```hcl

module "rglb" {
  source = "git::git@git.signintra.com:dct/azure/terraform-azurerm-rg.git?ref=x.x.x"

  name         = "rg-name"
  location     = "West US"
}

```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application"></a> [application](#input\_application) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Resource Group Location | `string` | `"westeurope"` | no |
| <a name="input_location_code"></a> [location\_code](#input\_location\_code) | n/a | `string` | n/a | yes |
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
