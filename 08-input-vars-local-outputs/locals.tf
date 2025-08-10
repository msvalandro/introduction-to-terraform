locals {
  project       = "08-input-vars-local-outputs"
  project_owner = "terraform-course"
  cost_center   = "1234"
  managed_by    = "Terraform"
  sensitive_tag = var.my_sensitive_value
}

locals {
  common_tags = {
    project       = local.project
    project_owner = local.project_owner
    cost_center   = local.cost_center
    manager_by    = local.managed_by
  }
}
