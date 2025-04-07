variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "example-rg"
}

variable "location" {
  description = "The Azure region for the Resource Group"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "Tags to apply to the Resource Group"
  type        = map(string)
  default = {
    "Landscape"= "Dev"
    "Service Catalogue" = "..."
    "Service Owner" = "..."
    "Created By" = "..."
  }
}
