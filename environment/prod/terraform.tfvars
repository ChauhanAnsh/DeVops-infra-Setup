# rgs = {
#   rg1 = {
#     name     = "rg-gtr"
#     location = "centralindia"

#     tags = {
#       environment = "pre-prod"
#       managed_by  = "terraform"
#     }
#     rg2 = {
#       name     = "rg-lemborgini"
#       location = "eastus"

#       tags = {
#         environment = "prod"
#         managed_by  = "terraform"
#       }
#     }
#     rg3 = {
#       name     = "rg-ferrari"
#       location = "westus"

#       tags = {
#         environment = "prod"
#         managed_by  = "terraform"
#       }
#     }
#   }
#    rg4 = {
#       name     = "rg-swift"
#       location = "westus"

#       tags = {
#         environment = "prod"
#         managed_by  = "terraform"
#       }
#     }
# }
# stgs = {
#   stg1 = {
#     stg_name                 = "stgporches"
#     location                 = "centralindia"
#     resource_group_name      = "rg-gtr"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#     tags = {
#       environment = "pre-prod"
#       managed_by  = "terraform"
#     }
# } }
# vnet = {
#   vnet1 = {
#     vnet_name           = "vnet-gtr-dev"
#     location            = "centralindia"
#     rg_name             = "rg-gtr"
#     address_space       = ["10.0.0.0/16"]
#   }
# }
# subnets = {
#   snet1 = {
#     name                 = "frontend-subnet-dev"
#     resource_group_name  = "rg-gtr"
#     virtual_network_name = "vnet-porches-dev"
#     address_prefixes     = ["10.0.1.0/24"]
#   }
#   snet2 = {
#     name                 = "backend-subnet-dev"
#     resource_group_name  = "rg-gtr"
#     virtual_network_name = "vnet-porches-dev"
#     address_prefixes     = ["10.0.2.0/24"]
#   }
#   snet3 = {
#     name                 = "database-subnet-dev"
#     resource_group_name  = "rg-gtr"
#     virtual_network_name = "vnet-porches-dev"
#     address_prefixes     = ["10.0.3.0/24"]
#   }
#   snet4 = {
#     name                 = "AzureBastionSubnet"
#     resource_group_name  = "rg-gtr"
#     virtual_network_name = "vnet-porches-dev"
#     address_prefixes     = ["10.0.4.0/26"]
#   }
#   snet5 = {
#     name                 = "AppGatewaySubnet"
#     resource_group_name  = "rg-gtr"
#     virtual_network_name = "vnet-porches-dev"
#     address_prefixes     = ["10.0.5.0/24"]
#   }
# }
# public_ips = {
#   pip_bastion = {
#     pip_name            = "pip-bastion-dev"
#     rg_name             = "rg-gtr"
#     location            = "centralindia"
#     allocation_method   = "Static"
#     tags = {
#       environment       = "pre-prod"
#   }
#   }
#   pip_appgw = {
#     pip_name            = "pip-appgw-dev"
#     rg_name             = "rg-gtr"
#     location            = "centralindia"
#     allocation_method   = "Static"
#     tags = {
#       environment       = "pre-prod"
#   }
#   }
# }
# vms = {
#   frontend_1 = {
#     nic_name        = "frontend-vm-nic-1-dev"
#     location        = "centralindia"
#     rg_name         = "rg-gtr"
#     nic_subnet_name = "frontend-subnet-dev"
#     nic_vnet_name   = "vnet-porches-dev"
#     vm_name         = "frontend-vm-1-dev"
#     vm_size         = "Standard_B1s"
#     admin_username  = "devopsadmin"
#     key_vault_name  = "kv-porches-dev-123"
#     secret_name     = "admin-password"
#     image_publisher = "Canonical"
#     image_offer     = "0001-com-ubuntu-server-jammy"
#     image_sku       = "22_04-lts"
#     image_version   = "latest"
#   }
#   frontend_2 = {
#     nic_name        = "frontend-vm-nic-2-dev"
#     location        = "centralindia"
#     rg_name         = "rg-gtr"
#     nic_subnet_name = "frontend-subnet-dev"
#     nic_vnet_name   = "vnet-porches-dev"
#     vm_name         = "frontend-vm-2-dev"
#     vm_size         = "Standard_B1s"
#     admin_username  = "devopsadmin"
#     key_vault_name  = "kv-porches-dev-123"
#     secret_name     = "admin-password"
#     image_publisher = "Canonical"
#     image_offer     = "0001-com-ubuntu-server-jammy"
#     image_sku       = "22_04-lts"
#     image_version   = "latest"
#   }
#   backend_1 = {
#     nic_name        = "backend-vm-nic-1-dev"
#     location        = "centralindia"
#     rg_name         = "rg-gtr"
#     nic_subnet_name = "backend-subnet-dev"
#     nic_vnet_name   = "vnet-porches-dev"
#     vm_name         = "backend-vm-1-dev"
#     vm_size         = "Standard_B1s"
#     admin_username  = "devopsadmin"
#     key_vault_name  = "kv-porches-dev-123"
#     secret_name     = "admin-password"
#     image_publisher = "Canonical"
#     image_offer     = "0001-com-ubuntu-server-jammy"
#     image_sku       = "22_04-lts"
#     image_version   = "latest"
#   }
#   backend_2 = {
#     nic_name        = "backend-vm-nic-2-dev"
#     location        = "centralindia"
#     rg_name         = "rg-gtr"
#     nic_subnet_name = "backend-subnet-dev"
#     nic_vnet_name   = "vnet-porches-dev"
#     vm_name         = "backend-vm-2-dev"
#     vm_size         = "Standard_B1s"
#     admin_username  = "devopsadmin"
#     key_vault_name  = "kv-porches-dev-123"
#     secret_name     = "admin-password"
#     image_publisher = "Canonical"
#     image_offer     = "0001-com-ubuntu-server-jammy"
#     image_sku       = "22_04-lts"
#     image_version   = "latest"
#   }
#   database_1 = {
#     nic_name        = "database-vm-nic-dev"
#     location        = "centralindia"
#     rg_name         = "rg-gtr"
#     nic_subnet_name = "database-subnet-dev"
#     nic_vnet_name   = "vnet-porches-dev"
#     vm_name         = "database-vm-dev"
#     vm_size         = "Standard_B2s"
#     admin_username  = "devopsadmin"
#     key_vault_name  = "kv-porches-dev-123"
#     secret_name     = "admin-password"
#     image_publisher = "Canonical"
#     image_publisher = "Canonical"
#     image_publisher = "Canonical"
#     image_offer     = "0001-com-ubuntu-server-jammy"
#     image_sku       = "22_04-lts"
#     image_version   = "latest"
#   }
# }
# bastions = {
#   bastion1 = {
#     name           = "bastion-dev"
#     location       = "centralindia"
#     rg_name        = "rg-gtr"
#     subnet_name    = "AzureBastionSubnet"
#     vnet_name      = "vnet-porches-dev"
#     public_ip_name = "pip-bastion-dev"
#   }
# }

# app_gateways = {
#   appgw1 = {
#     name           = "appgw-dev"
#     location       = "centralindia"
#     rg_name        = "rg-gtr"
#     subnet_name    = "AppGatewaySubnet"
#     vnet_name      = "vnet-porches-dev"
#     public_ip_name = "pip-appgw-dev"
#   }
# }
# key_vaults = {
#   kv1 = {
#     kv_name     = "kv-porches-dev-123"
#     location    = "centralindia"
#     rg_name     = "rg-gtr"
#     secret_name = "admin-password"
#   }
#  }

# # # load_balancers = {
# # #   lb1 = {
# # #     name        = "lb-backend-dev"
# # #     location    = "centralindia"
# # #     rg_name     = "rg-gtr"
# # #     subnet_name = "backend-subnet-dev"
# # #     vnet_name   = "vnet-porches-dev"
# # #   }
# # # }

