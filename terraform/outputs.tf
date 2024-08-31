# outputs.tf
output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "cosmosdb_name" {
  value = module.cosmosdb.mongo_db_name
}

output "postgresql_server_name" {
  value = module.postgresql.influx_db_name
}

output "app_service_plan_name" {
  value = module.service_plan.app_service_plan_name
}

output "function_app_1_name" {
  value = module.functions.function_app_1_name
}

output "function_app_2_name" {
  value = module.functions.function_app_2_name
}

output "web_app_1_name" {
  value = module.web_apps.web_app_1_name
}

output "web_app_2_name" {
  value = module.web_apps.web_app_2_name
}
