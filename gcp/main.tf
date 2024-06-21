# Provider

provider "google" {
  project     = var.gcp_project_id
  region      = var.gcp_region
  credentials = file(var.gcp_svc_key)
  default_labels = {
    owner = "shazni"
  }
}

provider "google-beta" {
  project     = var.gcp_project_id
  region      = var.gcp_region
  credentials = file(var.gcp_svc_key)
  default_labels = {
    owner = "shazni"
  }
}
