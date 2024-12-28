variable "test12" {
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
resource "null_resource" "yes" {
  for_each = var.test12
  ravi = each.value["name"]
  surya = each.value["type"]

}
output "op" {
  value = null_resource.yes
}