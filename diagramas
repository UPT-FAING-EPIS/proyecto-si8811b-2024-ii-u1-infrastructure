resource "azurerm_cosmosdb_account" "mongo" {
  name                = var.mongo_db_name
  resource_group_name = var.resource_group_name
  location            = var.location
  offer_type          = "Standard"
  kind                = "MongoDB"

  tags = {
    Service = "MongoDB"
    Environment = "Dev"
  }

  capabilities {
    name = "EnableMongo"
  }

  geo_location {
    location          = var.location
    failover_priority = 0
  }

  consistency_policy {
    consistency_level = "Session"
  }
}
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

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

resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "terraform" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}

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
