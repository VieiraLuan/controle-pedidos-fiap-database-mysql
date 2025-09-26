variable "resource_group_name" {
  type    = string
  default = "controlepedidos-rg"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "mysql_server_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
  sensitive = true
}

variable "database_name" {
  type    = string
  default = "controlepedidosdb"
}