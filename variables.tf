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

# variable "hc-internet-facing" {
#   type    = string
#   default = "false"
# }

# variable creator {
#   type    = string
# }

# variable customer {
#   type    = string
#   default = ""
# }

# variable tfe-workspace {
#   type    = string
# }

# variable lifecycle-action {
#   type    = string
# }

# variable config-as-code {
#   type    = string
#   default = "terraform"
# }

# variable repo {
#   type    = string
# }

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