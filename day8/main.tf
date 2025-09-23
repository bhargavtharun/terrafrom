resource "azurerm_resource_group" "rg" {
  name     = "POC"
  location = "eastus"
}
resource "azurerm_storage_account" "example" {
  name                     = "bhargav0347"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
resource "azurerm_storage_container" "container" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}