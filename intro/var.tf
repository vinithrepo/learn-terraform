variable "test11" {
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