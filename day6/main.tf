resource "azurerm_resource_group" "rg" {
  name     = var.resourcegroup
  location = var.location
}
resource "azurerm_virtual_network" "vnetwork" {
  name                = var.virtualnetwork
  address_space       = [var.address_vnet]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnetwork.name
  address_prefixes     = [var.adsress_subnet]

}