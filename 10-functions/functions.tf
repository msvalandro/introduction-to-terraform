locals {
  name = "Matheus Valandro"
  age  = 29
  my_object = {
    key1 = 10
    key2 = "my_value"
  }
}

output "example1" {
  value = upper(local.name)
}

output "example2" {
  value = pow(local.age, 2)
}

output "example3" {
  value = yamldecode(file("${path.module}/users.yml")).users[*].name
}

output "example4" {
  value = yamlencode(local.my_object)
}
