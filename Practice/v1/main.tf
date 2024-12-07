variable "ami_id" {
  default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}
variable "zone_id" {
  default = "Z0345275C3S6UDSOR4CU"
}
////////////////////////
////////////////////////
resource "aws_instance" "frontend" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  name    = "frontend.vinithaws.online"
  type    = "A"
  zone_id = var.zone_id
  ttl = 30
  records = [ aws_instance.frontend.private_ip ]
}
resource "aws_instance" "mongodb" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids


  tags = {
    Name = "mongodb"
  }
}

  resource "aws_route53_record" "mongodb" {
    name    = "mongodb.vinithaws.online"
    type    = "A"
    zone_id = var.zone_id
    ttl = 30
    records = [ aws_instance.mongodb.private_ip ]
    }