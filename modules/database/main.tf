resource "azurerm_sql_server" "sql" {
  name                = "sql-secure"
  location            = "East US"
  resource_group_name = "database-rg"
  version            = "12.0"
  administrator_login = "adminuser"
  administrator_login_password = "ChangeMe123!"
}

resource "azurerm_sql_database" "sqldb" {
  name                = "secure-db"
  resource_group_name = azurerm_sql_server.sql.resource_group_name
  location            = azurerm_sql_server.sql.location
  server_name         = azurerm_sql_server.sql.name
  edition             = "BusinessCritical"
  collation           = "SQL_Latin1_General_CP1_CI_AS"
}
