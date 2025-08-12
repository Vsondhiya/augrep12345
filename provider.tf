terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "vinsanrg"
    storage_account_name = "vinsanstorageacc"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "vinsancontainer"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "vinsan.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
    subscription_id = "bcf304d8-21b8-4358-9c77-54b5dd26f938"
    
}
