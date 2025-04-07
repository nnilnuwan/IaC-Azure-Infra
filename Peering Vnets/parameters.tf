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

variable "source_vnet_id" {
  description = "ID of the source VNet"
  type        = string
  default     = "/subscriptions/<sub_id>/resourceGroups/example-rg/providers/Microsoft.Network/virtualNetworks/vnet-a"
}

variable "remote_vnet_name" {
  description = "Name of the remote VNet to peer with"
  type        = string
  default     = "vnet-b"
}

variable "remote_vnet_id" {
  description = "ID of the remote VNet"
  type        = string
  default     = "/subscriptions/<sub_id>/resourceGroups/example-rg/providers/Microsoft.Network/virtualNetworks/vnet-b"
}

variable "allow_forwarded_traffic" {
  type        = bool
  default     = true
}

variable "allow_gateway_transit" {
  type        = bool
  default     = false
}

variable "use_remote_gateways" {
  type        = bool
  default     = false
}
