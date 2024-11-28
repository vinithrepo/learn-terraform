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
    Name = lookup(each.value , "name", "NA")
    //lookup(var.components, each.value["name"], "na" )
    //lookup(each.value , "name", "NA")
    //each.value["name"]
  }
}
resource "aws_route53_record" "record" {
  for_each = var.components
  name    = "${lookup(each.value,"name" ,"NA")}.vinithaws.online"
  type    = "A"
  zone_id = var.zone_id
  ttl = 30
  records = [ lookup(aws_instance.instance,each.key, "NA" ]
    // lookup(lookup(aws_instance.instance,each.key, null ),"private_ip", null)
}

