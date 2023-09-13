variable "prefix" {
  description = "Prefix used in the resources names"
  default     = "iac-demo"
  type        = string
}

variable "resource_group_name" {
  description = "Azure Resource Group"
}

variable "location" {
  description = "Resource location"
  type        = string
}