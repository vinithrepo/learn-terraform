resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids


  tags = {
    Name = var.name
  }
}
resource "aws_route53_record" "record" {
  name    = "${var.name}-dev.vinithaws.online"
  type    = "A"
  zone_id = var.zone_id
  ttl = 30
  records = [aws_instance.instance.private_ip]
}
resource "null_resource" "ansible" {
  depends_on = [aws_route53_record.record]
  provisioner "local-exec" {
    command = <<EOF
cd /home/centos/roboshop-ansible
git pull
sleep 60
ansible-playbook -i ${var.name}-dev.vinithaws.online, main.yml  -e ansible_user=centos -e ansible_password=DevOps321 -e component=${var.name}
EOF
  }
}

