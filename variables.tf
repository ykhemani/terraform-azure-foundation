variable prefix {
  type    = string
}

variable owner {
  type    = string
}

variable se-region {
  type    = string
}

variable purpose {
  type    = string
  default = ""
}

variable ttl {
  type    = string
  default = "24"
}

variable location {
  type    = string
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