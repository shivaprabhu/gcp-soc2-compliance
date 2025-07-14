#Congifure GCP

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.34.0"
    }
  }
}

provider "google" {
  #credentials = file("<YOUR-CREDENTIALS-FILE>.json")
  project     = "gcp-101-dev"
  region      = "us-central1"
}

# Define resources to create
resource "google_storage_bucket" "test_storage_bucket" {
  name          = "gcp-101-test-bucket"
  location      = "US"
  force_destroy = true
  
}