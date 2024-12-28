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
resource "aws_instance" "yes" {
  for_each = var.test12
  ami = each.value["name"]
  instance_type = lookup(var.test12 , each.value["type"], 0)

}
output "op" {
  value = aws_instance.yes
}