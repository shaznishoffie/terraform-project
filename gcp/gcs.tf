# Create GCS bucket resources

resource "google_storage_bucket" "test_bucket" {
  name     = "test-bucket"
  location = "US"
}
