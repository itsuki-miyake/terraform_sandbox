variable "project_id" { type = string }

module "project-iam-bindings" {
  source   = "terraform-google-modules/iam/google//modules/projects_iam"
  projects = ["${var.project_id}"]
  mode     = "authoritative" # iam-binding
  # mode     = "additive"    # iam-member

  bindings             = var.simple_bindings
  conditional_bindings = var.conditional_bindings
}
