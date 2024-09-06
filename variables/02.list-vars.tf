//ex1//
variable "fruits" {
  default = [
  "apple", #comma should be here to separate the item
  "banana"
  ]
}

output "fruits_first" {
  value = var.fruits[0]
}

//ex2//
variable "fruits_name" {
  default = [ "apple", "banana" ]
}

output "fruits_second" {
  value = var.fruits_name[1]
}

output "fruits_name" {
  value = "${ var.fruits_name[0] }"
}
