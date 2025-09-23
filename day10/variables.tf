variable "ips" {
  type = map(object({
    ip_name = string
    sku     = string
  }))
  default = {
    "ip1" = {
      ip_name = "bhargav"
      sku     = "Basic"

    }
    "ip2" = {
      ip_name = "tharun"
      sku     = "Standard"
    }
  }

}