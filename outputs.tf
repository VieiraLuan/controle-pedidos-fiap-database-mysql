output "mysql_host" {
  value = azurerm_mysql_flexible_server.mysql_server.fqdn
}

output "mysql_port" {
  value = 3306
}

output "database_name" {
  value = azurerm_mysql_flexible_server_database.db.name
}