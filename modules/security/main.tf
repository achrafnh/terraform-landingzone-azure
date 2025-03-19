resource "azurerm_security_center_subscription_pricing" "security" {
  tier = "Standard"
}

resource "azurerm_security_center_contact" "security_contact" {
  email               = "security-team@example.com"
  alert_notifications = true
}
