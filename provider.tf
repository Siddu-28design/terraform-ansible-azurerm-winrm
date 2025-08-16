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
 client_id="d5d291cd-b6ff-4d21-8a52-9f1899042ac9"
 client_secret="mR-8Q~5KrqDzGfEAu8noVPSkU~mg1wGIzNITibMs"
 tenant_id="7e1b4521-93b6-473d-8e77-cf32c35bff05"
 subscription_id="34a1c0d5-ab81-462c-89db-795e1572cd70"
}
