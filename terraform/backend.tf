terraform {
  /* backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstateahn98"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  } */

/*   backend "remote" {
    hostname     = "app.terraform.io"
    organization = "angel-nav"
    workspaces {
      name = "iac-demo"
    }
  } */

  backend "local"{
    path = "./terraform.tfstate"
  }
}