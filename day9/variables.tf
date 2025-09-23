variable "rg1" {
    type = string 
    default = "tharun"
}

variable "public-ips" {
    type = map(string) 
    default = {
      "bhargav" = "eastus"
      "raghva" =  "eastus"
    }
    
}

variable "location1" {
    type = string
    default = "eastus"
}