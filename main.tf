resource "azurerm_mysql_flexible_server" "mysql_server" {
  name                   = var.mysql_server_name
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = "8.0"
  administrator_login    = var.admin_username
  administrator_password = var.admin_password
  sku_name               = "B_Standard_B1ms"

  storage {
    size_gb = 5 # 5120 MB = 5 GB
  }

  backup {
    backup_retention_days = 7
  }

  high_availability {
    mode = "Disabled"
  }

  public_network_access_enabled = true
}

resource "azurerm_mysql_flexible_database" "db" {
  name      = var.database_name
  server_id = azurerm_mysql_flexible_server.mysql_server.id
  charset   = "utf8"
  collation = "utf8_general_ci"
}
