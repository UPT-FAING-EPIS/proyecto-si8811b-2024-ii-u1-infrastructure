resource "azurerm_linux_web_app" "webapp1" {
  name                = var.web_app_1_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    always_on = false
  }
  tags = {
    Service     = "Web App"
    Environment = "Dev"
  }
}

resource "azurerm_linux_web_app" "webapp2" {
  name                = var.web_app_2_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    always_on = false
  }
  tags = {
    Service     = "Web App"
    Environment = "Dev"
  }
}
