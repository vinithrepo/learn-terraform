variable "test11" {
  default = {
  frontend = {
    name = "dev"
    type = "t2"
  }
  user = {
    name = "prod"
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
output "test20" {
  value = var.test11.frontend["name"]
}