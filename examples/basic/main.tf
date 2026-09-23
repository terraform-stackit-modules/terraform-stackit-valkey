#####################################################################################
# Terraform module examples are meant to show an _example_ on how to use a module
# per use-case. The code below should not be copied directly but referenced in order
# to build your own root module that invokes this module.
#
# This example is self-contained and requires only `project_id`: it creates a
# Valkey instance and a credential on it.
#####################################################################################

module "valkey" {
  source = "../.."

  project_id     = var.project_id
  name           = "example-valkey"
  valkey_version = "8"
  plan_name      = "stackit-keyvalue-1.4.10-single"

  parameters = {
    sgw_acl = "0.0.0.0/0"
  }

  credentials = {
    app = {}
  }
}
