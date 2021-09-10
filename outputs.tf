output "server_name" {
  description = "The name of the mysql server"
  value       = azurerm_mysql_server.server.name
}

output "server_fqdn" {
  description = "The fully qualified domain name (FQDN) of the mysql server"
  value       = azurerm_mysql_server.server.fqdn
}

output "administrator_login" {
  value = var.administrator_login
}

output "administrator_password" {
  value     = var.administrator_password
  sensitive = true
}

output "server_id" {
  description = "The resource id of the mysql server"
  value       = azurerm_mysql_server.server.id
}

output "database_ids" {
  description = "The list of all database resource ids"
  value       = [azurerm_mysql_database.dbs.*.id]
}

output "firewall_rule_ids" {
  description = "The list of all firewall rule resource ids"
  value       = [azurerm_mysql_firewall_rule.firewall_rules.*.id]
}

output "vnet_rule_ids" {
  description = "The list of all vnet rule resource ids"
  value       = [azurerm_mysql_virtual_network_rule.vnet_rules.*.id]
}

