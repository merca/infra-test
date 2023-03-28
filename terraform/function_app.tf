resource "azurerm_service_plan" "elastic" {
  name                = "elastic-functions"
  location            = module.merca-resource-group.location
  resource_group_name = module.merca-resource-group.name
  sku_name            = "Y1"
  os_type             = "Linux"
}

module "merca-function-app" {
  source              = "app.terraform.io/private-azure/merca-function-app/azurerm"
  version             = "1.0.3"
  environment         = "dev"
  key_vault_id        = module.merca-key-vault.id
  name                = "workshop"
  resource_group_name = module.merca-resource-group.name
  tags                = module.taggify.tags
  dotnet_version      = "7.0"
  app_service_plan_id = azurerm_service_plan.elastic.id
  depends_on = [
    azurerm_service_plan.elastic
  ]
}