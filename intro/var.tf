variable "test11" {
  default = {
  frontend = {
    name = devs
    type = "t2"
  }
  user = {
    name = prods
    type = "t5"
  }
}
}

output "test18" {
  value = var.test11
}
output "var" {
  value = "this is vinith"
}