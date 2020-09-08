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
## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| location | Resource Group Location | `string` | `"westeurope"` | no |
| name | Resource Group Name | `string` | n/a | yes |
| tags | Environment tag for the resource group (i.e. 'Production') | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |
| location | n/a |
| name | n/a |
| subscription\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


# pre-commit hook

this repo is using pre-commit hook to know more [click here](https://github.com/antonbabenko/pre-commit-terraform)
to manually trigger use this command

```
pre-commit install
pre-commit run --all-files
```
