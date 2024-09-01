terraform {
  backend "azurerm" {
    resource_group_name  = "topicos-backend-group"
    storage_account_name = "topicosbackendaccount"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}
