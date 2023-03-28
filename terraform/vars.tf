variable "subscription_id" {
  type        = string
  description = "The subscription ID to use for the Azure provider"
}
variable "tenant_id" {
  type        = string
  description = "The tenant ID to use for the Azure provider"
}
variable "deploy_app_object_id" {
  type        = string
  description = "The object ID of the service principal that will deploy the resources"
}
variable "environment" {
  type        = string
  description = "The environment to deploy to"
}
variable "name" {
  type        = string
  description = "The name prefix to use for the resources"
}
