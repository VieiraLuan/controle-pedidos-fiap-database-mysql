resource "azurerm_mysql_server" "mysql_server" {
  name                = var.mysql_server_name
  location            = var.location
  resource_group_name = var.resource_group_name
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
  version = "8.0.21"
  sku_name   = "B_Gen5_1"  
  
  storage {
    size_gb = 20
  }
  
  backup_retention_days = 7
  geo_redundant_backup  = "Disabled"
  auto_grow_enabled     = true
  public_network_access_enabled = true
}

resource "azurerm_mysql_database" "db" {
  name                = var.database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.mysql_server.name
  charset             = "utf8"
  collation           = "utf8_general_ci"
}