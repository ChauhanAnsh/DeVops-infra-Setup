# module "rgs" {
#   source = "../../modules/resource_group"
#   rgs    = var.rgs
# }
# module "stgs" {
#   depends_on = [module.rgs]
#   source     = "../../modules/storage_account"
#   stgs       = var.stgs
# }
# module "vnet" {
#   depends_on = [module.rgs]
#   source     = "../../modules/virtual_network"
#   vnet       = var.vnet
# }
# module "subnets" {
#   depends_on = [module.vnet]
#   source     = "../../modules/subnet"
#   subnets    = var.subnets
# }
# module "pip" {
#   depends_on = [module.rgs]
#   source     = "../../modules/Public_ip"
#   pip        = var.public_ips
# }
# module "key_vault" {
#   depends_on = [module.rgs]
#   source     = "../../modules/key_vault"
#   key_vault  = var.key_vaults
# }
# module "virtual_machine" {
#   depends_on = [module.subnets, module.key_vault]
#   source     = "../../modules/virtual_machine"
#   vms        = var.vms
# }
# module "bastion" {
#   depends_on = [module.subnets, module.pip]
#   source     = "../../modules/azurerm_bastion"
#   bastion    = var.bastions
# }

# module "application_gateway" {
#   depends_on   = [module.subnets, module.pip, module.virtual_machine]
#   source       = "../../modules/application_gateway"
#   appgat       = var.app_gateways
# }

# # module "load_balancer" {
# #   depends_on     = [module.subnets, module.virtual_machines]
# #   source         = "../../modules/azurerm_load_balancer"
# #   load_balancers = var.load_balancers
# # }

# # resource "azurerm_network_interface_application_gateway_backend_address_pool_association" "appgw_assoc" {
# #   for_each                = { for k, v in var.vms : k => v if startswith(k, "frontend") }
# #   network_interface_id    = module.virtual_machines.nic_ids[each.key]
# #   ip_configuration_name   = module.virtual_machines.nic_ip_configurations[each.key]
# #   backend_address_pool_id = module.application_gateway.backend_address_pool_ids["appgw1"]
# # }

# # resource "azurerm_network_interface_backend_address_pool_association" "lb_assoc" {
# #   for_each                = { for k, v in var.vms : k => v if startswith(k, "backend") }
# #   network_interface_id    = module.virtual_machines.nic_ids[each.key]
# #   ip_configuration_name   = module.virtual_machines.nic_ip_configurations[each.key]
# #   backend_address_pool_id = module.load_balancer.backend_address_pool_ids["lb"]
#
 # }

