terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Siddu"          
    workspaces {
      name = "terraform-azurerm-winrm-ansible"            
    }
  }
}

provider "azurerm" {
  features {}
}
