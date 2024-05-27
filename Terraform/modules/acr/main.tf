# modules/acr/main.tf
resource "azurerm_container_registry" "acr" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  sku                      = var.sku
  admin_enabled            = var.admin_enabled
}

output "login_server" {
  value = azurerm_container_registry.acr.login_server
}