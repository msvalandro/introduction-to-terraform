locals {
  double_numbers = [for num in var.numbers_list : num * 2]
  even_numbers   = [for num in var.numbers_list : num if num % 2 == 0]
  firstnames     = [for person in var.objects_list : person.firstname]
  fullnames      = [for person in var.objects_list : "${person.firstname} ${person.lastname}"]
}

output "for-lists" {
  value = {
    double_numbers = local.double_numbers
    even_numbers   = local.even_numbers
    firstnames     = local.firstnames
    fullnames      = local.fullnames
  }
}
