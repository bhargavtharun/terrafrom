output "my-ip" {
    value = "this is my ip ${azurerm_public_ip.p-ip[0].ip_address} and the name of ip is ${azurerm_public_ip.p-ip[0].name} "
  
}
output "my-ip-1" {
    value = "this is my ip ${azurerm_public_ip.p-ip[1].ip_address} and the name of ip is ${azurerm_public_ip.p-ip[1].name} "
  
}