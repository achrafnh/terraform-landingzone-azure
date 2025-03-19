module "landing_zone" {
  source = "../../modules"

  # Environment-specific variables
  environment   = "prod"
  location      = "East US"
  vm_count      = 5
  aks_node_count = 3
}
