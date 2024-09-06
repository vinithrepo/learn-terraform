variable "name" {
  default = "vinith"
}

output "my_name_is" {
  value = var.name
}
variable "fruit_name" {
  default = "Orange"
}
output "fruit_name_is" {
  value = var.fruit_name
}
variable "item_name" {
  default = "mobile"
}
output "item" {
  value = " name is = ${var.item_name} "
}
variable "item_name_is" {
  default = "cellphone"
}
output "item_name" {
  value = " ${var.item_name_is} "
}