terraform {
  backend "azurerm" {
    resource_group_name  = "my-resource-group"
    storage_account_name = "mytopicosaccount"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}
