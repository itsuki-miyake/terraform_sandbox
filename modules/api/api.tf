module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  org_id               = var.organization_id
  # folder_id            = var.folder_id
  name                 = var.project_name
  project_id           = var.project_id
  billing_account      = var.billing_account
  # usage_bucket_name    = var.usage_bucket_name
  # usage_bucket_prefix  = var.usage_bucket_prefix
  activate_apis        = var.apis
}
