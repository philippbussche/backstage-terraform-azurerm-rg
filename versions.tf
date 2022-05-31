terraform {
  required_version = ">= 0.12.31"
  # ideally we would also put a constraint around the azurerm provider however this is not supported in Terraform 0.12
  # required_providers {
  #   azurerm = {
  #     source  = "hashicorp/azurerm"
  #     version = ">= 2.59.0"
  #   }
  # }
}
