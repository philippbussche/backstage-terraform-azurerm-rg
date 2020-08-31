variable "location" {
  description = "Resource Group Location"
  default     = "westeurope"
  type        = string
}

variable "name" {
  description = "Resource Group Name"
  type        = string
}

variable "tags" {
  description = "Environment tag for the resource group (i.e. 'Production')"
  type        = map(string)
  default     = {}
}
