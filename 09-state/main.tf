terraform {
  backend "s3" {
    bucket         = "qwerty83"
    key            = "tfvars/state1.tf"
    region         = "us-east-1"
  }
}
variable "test" {
  default = "hello"
}

output "test" {
  value = var.test
}
