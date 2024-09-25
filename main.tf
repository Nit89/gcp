resource "google_storage_bucket" "my-bucket" {
  name          = "tt-github-nit-9099"
  location      = "US"
  force_destroy = true
#   project = "tt-dev-001"
  public_access_prevention = "enforced"
}