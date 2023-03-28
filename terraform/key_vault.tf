module "merca-key-vault" {
  source  = "app.terraform.io/private-azure/merca-key-vault/azurerm"
  version = "1.0.0"
  environment = "dev"
  name = "workshop"
  resource_group_name = module.merca-resource-group.name
  tags = module.taggify.tags
}