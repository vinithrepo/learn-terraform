terraform {
  backend "s3" {
    bucket         = "tf.state.test"
    key            = "tfvars/state.tf"
    region         = "us-east-1"
  }
}
variable "test" {}

output "test" {
  value = var.test
}