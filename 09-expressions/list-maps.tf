locals {
  users_map = { for user_info in var.users : user_info.username => user_info.role... }
  users_map2 = { for username, roles in local.users_map : username => {
    roles = roles
  } }
  usernames_from_map = [for username, roles in local.users_map : username]
}

output "list-maps" {
  value = {
    users_map            = local.users_map
    users_map2           = local.users_map2
    usernames_from_map   = local.usernames_from_map
    user_to_output_roles = local.users_map2[var.user_to_output].roles
  }
}
