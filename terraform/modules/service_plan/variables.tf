variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}
