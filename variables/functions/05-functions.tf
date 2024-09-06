variable "fruits_list" {
  default = ["apple", "grapes"]
}

output "fruits_fun" {
  value = element(var.fruits_list, 2)
}