provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id     = var.subscription_id
  tenant_id           = var.tenant_id
}
provider "azuread" {
  tenant_id           = var.tenant_id
}
terraform {
  required_version = "~> 1.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.47"
    }  
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.33.0"
    }
  }
  cloud {
    organization = "private-azure"
    workspaces {
      name = "infra-test"
    }
  }
}