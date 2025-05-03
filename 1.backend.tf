# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "theocigarlounge"
    prefix = "terraform/state"
    credentials = "peaceful-web-456101-k9-f0434e6b736c.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
