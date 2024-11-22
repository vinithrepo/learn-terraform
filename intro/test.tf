
output "xyz" {
  value = "Hello world"
}


variable "test" {
  default = "vinith"
}

output "test" {
  value = var.test
}