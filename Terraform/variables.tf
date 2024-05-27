# variables.tf
variable "acr_name" {
  description = "The name of the ACR"
}

variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location of the resource group"
}

variable "keyvault_name" {}
variable "storage_account_name" {}
variable "tenant_id" {}