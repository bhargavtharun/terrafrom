variable "resourcegroup" {
  type = string
  default = "poc"  
}
variable "location" {
  type = string
  default = "eastus"
}
variable "virtualnetwork" {
  type = string
  default = "vnet"
}
variable "subnet" {
  type = string
  default = "subnet"
}
variable "address_vnet" {
   type = string
   default = "10.0.0.0/16"
}
variable "adsress_subnet" {
   type = string
   default = "10.0.1.0/24"
}



