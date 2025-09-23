
data "azurerm_resource_group" "rg" {
  name = "tharun"
}

resource "azurerm_public_ip" "ipss" {
  name     = "myip"
  location = "centralus"
  resource_group_name = data.azurerm_resource_group.rg.name
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
