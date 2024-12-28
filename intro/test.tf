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
  ami = each.value["name"]
  type = each.value["type"]

}