variable "prefix" {
  description = "Prefix used in the resources names"
  default     = "ah-iac-demo"
  type        = string
}

variable "resource_group_name" {
  description = "Azure Resource Group"
}

variable "location" {
  description = "Resource location"
  type        = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}
