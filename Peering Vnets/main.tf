resource "azurerm_virtual_network_peering" "source_to_remote" {
  name                      = "${var.source_vnet_name}-to-${var.remote_vnet_name}"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.source_vnet_name
  remote_virtual_network_id = var.remote_vnet_id

  allow_forwarded_traffic = var.allow_forwarded_traffic
  allow_gateway_transit   = var.allow_gateway_transit
  use_remote_gateways     = var.use_remote_gateways
}

resource "azurerm_virtual_network_peering" "remote_to_source" {
  name                      = "${var.remote_vnet_name}-to-${var.source_vnet_name}"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.remote_vnet_name
  remote_virtual_network_id = var.source_vnet_id

  allow_forwarded_traffic = var.allow_forwarded_traffic
  allow_gateway_transit   = false
  use_remote_gateways     = false
}
