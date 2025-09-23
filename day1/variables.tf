variable "rg-name" {
    type = string
    default = "POC-terraform"
}
variable "location" {
    type = string
    default = "eastus"
  
}
variable "ips" {
    type = list
    default = ["bhargav-ip","tom","raghav-ip"]
}

