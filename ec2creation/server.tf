resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"

  tags = {
    Name = "node1"
  }
}
#resource "aws_instance" "ec2" {
#  ami                    = "ami-0b4f379183e5706b9"
#  instance_type          = "t3.micro"
#  vpc_security_group_ids = [aws_security_group.allow_tls.id]
#  subnet_id              = local.app_subnet_ids[0]
#}
#
#resource "aws_security_group" "allow_tls" {
#  name        = "allow_tls"
#  description = "Allow TLS inbound traffic and all outbound traffic"
#  vpc_id      = aws_vpc.main.id
#
#  ingress {
#    description = "TLS from VPC"
#    from_port   = 22
#    protocol    = "tcp"
#    to_port     = 22
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#  egress {
#    from_port   = 0
#    protocol    = "-1"
#    to_port     = 0
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#  tags = {
#    Name = "allow_tls"
#  }
#}