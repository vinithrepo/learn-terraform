variable "ami_id" {
  default = "ami-0b4f379183e5706b9"
}
variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}
variable "components" {
  default = {
    frontend = {
      name = "frontend-dev"
      instance_type = "t2.micro"
    }
    catalogue = {
      name = "catalogue-dev"
      instance_type = "t2.micro"
    }
  }
}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids


  tags = {
    Name = each.value["name"]
  }
}