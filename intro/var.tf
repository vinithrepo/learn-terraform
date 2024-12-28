variable "test11" {
  default = {
  frontend = {
    name = dev
    type = "t2"
  }
  user = {
    name = prod
    type = "t5"
  }
}
output "test11" {
  value = var.test11
}
}