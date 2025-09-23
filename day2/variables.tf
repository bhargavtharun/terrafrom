variable "rgname" {
    type = string
    default = "POC"
  
}
variable "location" {
    type = string
    default = "eastus"
  
}
variable "ips" {
    type = set(string)
    default = [ "raghav","bhargav" ]

  
}