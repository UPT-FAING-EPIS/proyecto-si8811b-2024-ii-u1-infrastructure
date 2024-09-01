module "resource_group" {
  source = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location = var.location
}

module "storage" {
  source = "./modules/storage"
  storage_account_name = var.storage_account_name
  container_name = var.container_name
  location = var.location
  resource_group_name = module.resource_group.resource_group_name
}

module "mongodb" {
  source = "./modules/mongodb"
  mongo_db_name = var.mongo_db_name
  location = var.location
  resource_group_name = module.resource_group.resource_group_name
}

module "service_plan" {
  source = "./modules/service_plan"
  app_service_plan_name = var.app_service_plan_name
  location = var.location
  resource_group_name = module.resource_group.resource_group_name
}

# module "functions" {
#   source = "./modules/functions"
#   function_app_1_name = var.function_app_1_name
#   function_app_2_name = var.function_app_2_name
#   location = var.location
# }

module "web_apps" {
  source = "./modules/web_apps"
  web_app_1_name = var.web_app_1_name
  web_app_2_name = var.web_app_2_name
  location = var.location
  resource_group_name = module.resource_group.resource_group_name
  service_plan_id       = module.service_plan.service_plan_id
}
