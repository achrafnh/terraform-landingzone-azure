resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-secure-cluster"
  location            = "East US"
  dns_prefix          = "aks-secure"

  default_node_pool {
    name       = "default"
    node_count = 5
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control {
    enabled = true
  }

  network_profile {
    network_plugin = "azure"
    network_policy = "calico"
  }
}

resource "azurerm_virtual_machine" "vm" {
  count                = 5
  name                 = "vm-${count.index}"
  location             = "East US"
  resource_group_name  = "vm-rg"
  vm_size              = "Standard_D2s_v3"
  
  network_interface_ids = [azurerm_network_interface.nic.id]
  
  storage_os_disk {
    name              = "vm-disk-${count.index}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Premium_LRS"
  }

  os_profile {
    computer_name  = "vm-${count.index}"
    admin_username = "azureadmin"
    admin_password = "ChangeMe!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}
