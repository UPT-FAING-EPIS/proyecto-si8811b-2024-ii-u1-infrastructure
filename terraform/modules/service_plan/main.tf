resource "azurerm_service_plan" "main" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "F1"
  os_type             = "Linux"

  tags = {
    Service = "Service Plan"
    Environment = "Dev"
  }
}
