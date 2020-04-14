variable "subnet_id" {
  description = "The subnet ID to create an association"
  default     = null
}

variable "gateway_id" {
  description = "The gateway ID to create an association"
  default     = null
}

variable "route_table_id" {
  description = "The ID of the routing table to associate with"
}