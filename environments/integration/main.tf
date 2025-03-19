module "landing_zone" {
  source = "../../modules"

  # Environment-specific variables
  environment   = "integration"
  location      = "West Europe"
  vm_count      = 2
  aks_node_count = 2
}
