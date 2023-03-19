# define our provider
provider "google" {
  project = var.project_id
  region  = var.gcp_region
}

# store terraform state on GCP
terraform {
  backend "gcs" {
    bucket = "cv-tf-state"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}