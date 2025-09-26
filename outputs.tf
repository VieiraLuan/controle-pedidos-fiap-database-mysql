output "mysql_host" {
  value       = azurerm_mysql_flexible_server.mysql_server.fqdn
  description = "FQDN do servidor MySQL"
}

output "mysql_port" {
  value       = 3306
  description = "Porta do MySQL"
}

output "database_name" {
  value       = azurerm_mysql_flexible_server_database.db.name
  description = "Nome do banco de dados criado"
}

output "mysql_connection_info" {
  value = {
    host = azurerm_mysql_flexible_server.mysql_server.fqdn
    port = 3306
    database = azurerm_mysql_flexible_server_database.db.name
    user = var.admin_username
  }
  description = "Informações de conexão do MySQL"
}