resource "azurerm_service_plan" "main" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku_name            = "F1"
  os_type             = "Linux"

  depends_on = [azurerm_resource_group.main]
}
