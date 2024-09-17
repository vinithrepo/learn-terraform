data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = [ 973714476881 ]
}

output "ami" {
  value = "data.aws_ami.ami.id"
}
resource "aws_instance" "web" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]

  tags = {
    Name = "server1"
  }
}
variable "instance_type" {}
