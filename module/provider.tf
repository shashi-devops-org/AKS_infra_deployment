terraform {
  required_providers{
    azurerm= {
        source= "hashicorp/azurerm"
        version = "4.61.0"

    }
    
  }
  # backend "azurerm"{
  #       resource_group_name= "aks_rg"
  #       storage_account_name= "aksstg123"
  #       container_name = "akscontainer"
  #       key = "aks.terrform.tfstate"
  #   }
}
provider "azurerm"{
    features{}
    subscription_id = "0bb0eb72-bad0-4374-9810-20ea6e5e6831"
}