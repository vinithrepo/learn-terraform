resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]


  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  name    = "frontend"
  type    = "A"
  zone_id = "Z0345275C3S6UDSOR4CU"
  ttl = 30
  records = [ aws_instance.frontend.private_ip ]
}
resource "aws_instance" "mongodb" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0ad8ec6873fafd140"]


  tags = {
    Name = "mongodb"
  }
}

  resource "aws_route53_record" "mongodb" {
    name    = "mongodb.vinithaws.online"
    type    = "A"
    zone_id = "Z0345275C3S6UDSOR4CU"
    ttl = 30
    records = [ aws_instance.mongodb.private_ip ]
    }