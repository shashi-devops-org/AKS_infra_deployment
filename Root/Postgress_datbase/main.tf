resource "azurerm_postgresql_flexible_server" "post_gress" {
  name                   = var.postgress_config.name
  resource_group_name    = var.postgress_config.rg_name
  location               = var.postgress_config.location
  version                = "18"
  administrator_login    = "adminuser"
  administrator_password = "shashi@123"
  storage_mb             = 32768
  sku_name               = "GP_Standard_D4s_v3"
}

resource "azurerm_postgresql_flexible_server_database" "data_base" {
  name      = var.database_config.name
  server_id = azurerm_postgresql_flexible_server.post_gress.id
  collation = "en_US.utf8"
  charset   = "UTF8"

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}