variable "web_app_1_name" {
  description = "The name of the first Web App"
  type        = string
}

variable "web_app_2_name" {
  description = "The name of the second Web App"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}
