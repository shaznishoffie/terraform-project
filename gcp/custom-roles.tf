resource "google_project_iam_custom_role" "gcs_bucket_admin" {
  role_id     = "gcs_bucket_admin"
  title       = "GCS Bucket Admin"
  description = "GCS Bucket Admin role for service accounts only"
  permissions = [
    "orgpolicy.policy.get",
    "resourcemanager.projects.get",
    "resourcemanager.projects.list",
    "storage.managedFolders.create",
    "storage.managedFolders.delete",
    "storage.managedFolders.get",
    "storage.managedFolders.list",
    "storage.multipartUploads.*",
  "storage.objects.*"]
}
