resource "azurerm_linux_web_app" "webapp1" {
  name                = var.web_app_1_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    always_on = false
  }
}

resource "azurerm_linux_web_app" "webapp2" {
  name                = var.web_app_2_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_service_plan.main.id

  site_config {
    always_on = false
  }
}
