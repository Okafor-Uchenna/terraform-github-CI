# modules/acr/variables.tf
variable "name" {
  description = "The name of the ACR"
}

variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location of the resource group"
}

variable "sku" {
  description = "The SKU of the ACR"
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Is admin enabled on the ACR?"
  default     = false
}