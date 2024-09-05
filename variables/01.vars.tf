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