terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.41.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

module "resource_group" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "aks_cluster" {
  source              = "./modules/aks"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "lb_ip" {
  source              = "./modules/public-ip"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "load_balancer" {
  source              = "./modules/load-balancer"
  prefix              = var.prefix
  location            = var.location
  public_ip_id        = module.lb_ip.id
  resource_group_name = var.resource_group_name
}