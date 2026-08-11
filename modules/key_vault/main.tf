resource "azurerm_key_vault" "key_vault" {
  for_each                   = var.key_vault
  name                       = each.value.kv_name
  location                   = each.value.location
  resource_group_name        = each.value.rg_name
  rbac_authorization_enabled = false
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    # key_permissions = [
    #   "Get",
    # ]

    secret_permissions = [
      "Set",
      "List",
      "Get",
      "Delete",
      "Purge",
      "Recover"
    ]

    # storage_permissions = [
    #   "Get",
    # ]
  }

}

resource "azurerm_key_vault_secret" "admin_password" {
  for_each     = var.key_vault
  name         = each.value.secret_name
  value        = "DevOps@123"
  key_vault_id = azurerm_key_vault.key_vault[each.key].id
}