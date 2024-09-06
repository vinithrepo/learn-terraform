//ex1
variable "name" {
  default = "vinith"
}

output "my_name_is" {
  value = var.name
}
//ex2
variable "fruit_name" {
  default = "Orange"
}
output "fruit_name_is" {
  value = var.fruit_name
}
//ex3
variable "item_name" {
  default = "mobile"
}
output "item" {
  value = " name is = ${var.item_name} "
}
//ex4
variable "item_name_is" {
  default = "cellphone"
}
output "item_name" {
  value = " ${var.item_name_is} "
}