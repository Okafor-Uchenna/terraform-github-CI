# main.tf
module "acr" {
  source               = "./modules/acr"
  name                 = var.acr_name
  resource_group_name  = var.resource_group_name
  location             = var.location
}

module "keyvault" {
  source              = "./modules/keyvault"
  name                = var.keyvault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
}

module "blobstorage" {
  source              = "./modules/blobstorage"
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
  location            = var.location
}