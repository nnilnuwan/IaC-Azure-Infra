variable "resource_group_name" {
  description = "The name of the Resource Group where the VNet will be created"
  type        = string
  default     = "example-rg"
}

variable "location" {
  description = "The Azure region for the VNet"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "example-vnet"
}

variable "address_space" {
  description = "The address space for the VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "List of subnets to create in the VNet"
  type = list(object({
    name           = string
    address_prefix = string
  }))
  default = [
    {
      name           = "subnet1"
      address_prefix = "10.0.1.0/24"
    },
    {
      name           = "subnet2"
      address_prefix = "10.0.2.0/24"
    }
  ]
}

variable "tags" {
  description = "Tags to apply to the VNet"
  type        = map(string)
  default = {
    "Landscape"= "Dev"
    "Service Catalogue" = "..."
    "Service Owner" = "..."
    "Created By" = "..."
  }
}
