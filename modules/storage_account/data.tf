data "azurerm_resource_group" "rg" {
  for_each = var.stgs
  name     = each.value.resource_group_name

}