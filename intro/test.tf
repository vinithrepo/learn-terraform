
output "xyz" {
  value = "Hello world"
}


variable "test" {
  default = "vinith"
}

output "test2" {
  value = var.test
}

variable "fruits" {
  default = "orange"
}
output "fruit" {
  value = "var.fruits"
}

