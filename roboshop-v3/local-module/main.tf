data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = [ 973714476881 ]
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = "var.name"
  }
}
resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.vinithaws.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}

variable "instance_type" {}
variable "zone_id" {}
variable "name" {}
variable "security_groups" {}