provider "google" {
  project = var.project_id
  region  = var.gcp_region
}
provider "google-beta" {
  project = var.project_id
  region  = var.gcp_region
}
 
terraform {
  required_version = ">= 1.5.2"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.31.0"
    }
  }
  # backend "gcs" {
  #   bucket = ""
  #   prefix = ""
  # }
}
