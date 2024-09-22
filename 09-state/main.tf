terraform {
  backend "s3" {
    bucket         = "tf.state.test"
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
