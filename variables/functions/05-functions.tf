variable "fruits_list" {
  default = ["apple", "grapes"]
}

output "fruits_fun" {
  value = elements(var.fruits_list, 2)
}