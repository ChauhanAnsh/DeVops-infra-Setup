resource "azurerm_storage_account" "stgs" {
  for_each = var.stgs

  name                     = each.value.stg_name
  location                 = data.azurerm_resource_group.rg[each.key].location
  resource_group_name      = data.azurerm_resource_group.rg[each.key].name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  tags = {
    managed_by  = each.value.tags["managed_by"]
    environment = each.value.tags["environment"]
  }

}
