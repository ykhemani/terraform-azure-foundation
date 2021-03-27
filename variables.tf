variable prefix {
  type   = string
}

variable owner {
  type   = string
}

variable location {
  type   = string
  default = "West US"
}

variable vnet_address_space {
  type    = list
  default = ["10.0.0.0/16"]
}

variable subnet0_address_prefixes {
  type    = list
  default = ["10.0.0.0/24"]
}