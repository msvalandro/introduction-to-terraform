locals {
  firstnames_from_splat = var.objects_list[*].firstname
  roles_from_splat      = values(local.users_map2)[*].roles
}

output "splat" {
  value = {
    firstnames_from_splat = local.firstnames_from_splat
    roles_from_splat      = local.roles_from_splat
  }
}
