resource "google_project" "my_project" {
  name                = var.name
  project_id          = "${var.project_id_prefix}-${random_string.random}"
  org_id              = var.org_id
  folder_id           = var.folder_id
  billing_account     = var.billing_account
  auto_create_network = var.auto_create_network
}

resource "random_string" "random" {
  length           = 6
  special          = false
  lower            = false
  upper            = false
}