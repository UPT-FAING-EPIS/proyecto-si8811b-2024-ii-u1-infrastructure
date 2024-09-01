variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Storage Account"
  type        = string
}

variable "container_name" {
  description = "The name of the Blob Storage Container"
  type        = string
}

variable "mongo_db_name" {
  description = "The name of the MongoDB (CosmosDB)"
  type        = string
}
variable "admin_user" {
  description = "The administrator username for the PostgreSQL server"
  type        = string
}

variable "admin_password" {
  description = "The administrator password for the PostgreSQL server"
  type        = string
  sensitive   = true
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "web_app_1_name" {
  description = "The name of the first Web App"
  type        = string
}

variable "web_app_2_name" {
  description = "The name of the second Web App"
  type        = string
}
