resource "azurerm_role_assignment" "iam" {
  scope                = "/subscriptions/your-subscription-id"
  role_definition_name = "Owner"
  principal_id         = "user-object-id"
}
