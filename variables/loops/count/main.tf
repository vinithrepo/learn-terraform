variable "components" {
  default = ["frontend", "mongodb"]
}
resource "aws_instance" "instance" {
  count = length(var.components)
  ami = "ami_name"
  instance_type = "type"
  vpc_security_group_ids = ["vpc_id"]

  tags = {
    name = ""
  }
}