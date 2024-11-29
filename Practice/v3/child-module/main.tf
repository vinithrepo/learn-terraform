resource "aws_instance" "instance" {
  ami           = var.ami_id
  instance_type = var.components["frontend"].instance_type
  vpc_security_group_ids = var.vpc_security_group_ids


  tags = {
    Name = var.components["frontend"].name
  }
}
variable "ami_id" {
  default = "ami-0b4f379183e5706b9"
}
variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}
variable "zone_id" {
  default = "Z0345275C3S6UDSOR4CU"
}
variable "components" {
  default = {
    frontend = {
      name = "frontend-dev"
      instance_type = "t2.micro"
    }
  }
}

output "test2" {
  value = aws_instance.instance
}