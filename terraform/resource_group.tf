module "taggify" {
  source       = "app.terraform.io/private-azure/taggify/azurerm"
  version      = "1.0.0"
  environment  = "dev"
  display_name = "workshop for terraform iac"
  contact      = "Merca Ovnerud <merca.ovnerud@bouvet.no>"
}

module "merca-resource-group" {
  source         = "app.terraform.io/private-azure/merca-resource-group/azurerm"
  version        = "1.0.0"
  contact_emails = ["merca.ovnerud@bouvet.no"]
  environment    = "dev"
  location       = "norwayeast"
  expected_cost  = 100
  name           = "workshop"
  tags           = module.taggify.tags
}