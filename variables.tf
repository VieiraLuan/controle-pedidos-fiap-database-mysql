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

variable "database_name" {
  type    = string
  default = "controlepedidosdb"
}

variable "admin_username" {
  type    = string
  sensitive = true
  default = ""
}

variable "admin_password" {
  type    = string
  sensitive = true
  default = ""
}
