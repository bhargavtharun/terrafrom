terraform {
  backend "azurerm" {
    resource_group_name = "POC"
    storage_account_name = "bhargav0347"
    container_name = "tfstate"
    key = "mystatefile.tfstate"
  }
}