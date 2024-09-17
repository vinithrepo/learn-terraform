module "components" {

  source = "./local-module"

  for_each = var.components

  zone_id = var.zone_id
  security_groups = var.security_groups
  name = each.value["name"]
  instance_type = each.value["instance_type"]
}


variable "security_groups" {
  default = [ "sg-0ad8ec6873fafd140" ]
}
variable "zone_id" {
  default = "Z0345275C3S6UDSOR4CU"
}
variable "components" {
  default = {
    frontend = {
      name = "frontend-dev"
      instance_type = "t3.micro"
    }
    mongodb = {
      name = "mongodb-dev"
      instance_type = "t3.micro"
    }
    catalogue = {
      name = "catalogue-dev"
      instance_type = "t3.micro"
    }
    user = {
      name = "user-dev"
      instance_type = "t3.micro"
    }
    cart = { name = "cart-dev" , instance_type = "t3.micro" }
    redis = { name = "redis-dev", instance_type = "t3.micro" }
    mysql = { name = "mysql-dev", instance_type = "t3.micro" }
    shipping = { name = "shipping-dev" , instance_type = "t3.micro"}
    rabbitmq = { name = "rabbitmq-dev" ,instance_type = "t3.micro" }
    payment = { name = "payment-dev" , instance_type = "t3.micro"}
  }
}