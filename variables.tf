variable "prefix" {
  type = string
}

variable "location" {
  type    = string
  default = "West US"
}

variable "vnet_address_space" {
  type    = list(any)
  default = ["10.0.0.0/16"]
}

variable "subnet0_address_prefixes" {
  type    = list(any)
  default = ["10.0.0.0/24"]
}
