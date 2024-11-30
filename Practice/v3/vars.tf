#variable "ami_id" {
#  default = "ami-0b4f379183e5706b9"
#}

variable "vpc_security_group_ids" {
  default = ["sg-0ad8ec6873fafd140"]
}
variable "zone_id" {
  default = "Z0345275C3S6UDSOR4CU"
}
variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t2.micro"
    }
    catalogue = {
      name = "catalogue"
      instance_type = "t2.micro"
    }
  }
}