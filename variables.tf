variable "resource_group_name" {
  type        = string
  default     = "controlepedidos-rg"
  description = "Resource group onde os recursos do MySQL serão criados"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Região do Azure"
}

variable "mysql_server_name" {
  type        = string
  description = "Nome do servidor MySQL"
}

variable "database_name" {
  type        = string
  default     = "controlepedidosdb"
  description = "Nome do banco de dados MySQL"
}

variable "admin_username" {
  type        = string
  sensitive   = true
  description = "Usuário administrador do MySQL"
}

variable "admin_password" {
  type        = string
  sensitive   = true
  description = "Senha administrador do MySQL"
}

variable "container_name" {
  type        = string
  default     = "tfstate"
  description = "Nome do container para armazenar o Terraform state"
}