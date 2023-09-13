variable "prefix" {
  description = "Prefix used for resources names"
  type        = string
}

variable "location" {
  description = "Azure Kubernetes Location"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "environment" {
  type        = string
  description = "This variable defines the Environment"
  default     = "dev"
}