variable "resource_group_name" {
  description = "The resource group where the VNets exist"
  type        = string
  default     = "example-rg"
}

variable "source_vnet_name" {
  description = "Name of the source VNet"
  type        = string
  default     = "vnet-a"
}

variable "remote_vnet_name" {
  description = "Name of the remote VNet"
  type        = string
  default     = "vnet-b"
}

variable "allow_forwarded_traffic" {
  description = "Whether to allow forwarded traffic in the peering"
  type        = bool
  default     = true
}

variable "allow_gateway_transit" {
  description = "Whether to allow gateway transit"
  type        = bool
  default     = false
}

variable "use_remote_gateways" {
  description = "Whether to use remote gateways"
  type        = bool
  default     = false
}
