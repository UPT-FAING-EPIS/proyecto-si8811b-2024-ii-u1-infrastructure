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
