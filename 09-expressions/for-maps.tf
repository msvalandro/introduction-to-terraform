locals {
  doubles_map = { for key, value in var.numbers_map : key => value * 2 }
  even_map    = { for key, value in var.numbers_map : key => value if value % 2 == 0 }

}

output "for-maps" {
  value = {
    doubles_map = local.doubles_map
    even_map    = local.even_map
  }
}
