variable "mongo_db_name" {
  description = "The name of the MongoDB (CosmosDB)"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}
