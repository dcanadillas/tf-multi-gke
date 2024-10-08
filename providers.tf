terraform {
  required_version = ">=1.0 "
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.7.0"
    }
  }
}

# data "vault_generic_secret" "gcp_secret" {
#   path = "gcp/token/token-roleset"
# }

provider "google" {
  project = var.gcp_project
  # region = var.gcp_region
}

