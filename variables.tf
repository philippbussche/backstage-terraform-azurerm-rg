variable "location" {
  description = "Resource Group Location"
  default     = "westeurope"
  type        = string
}

variable "tags" {
  description = "Environment tag for the resource group (i.e. 'Production')"
  type        = map(string)
  default     = {}
}

variable "topic" {
  type = string
}

variable "stage" {
  type = string
}

variable "application" {
  type = string
}

variable "location_code" {
  type = string
}
