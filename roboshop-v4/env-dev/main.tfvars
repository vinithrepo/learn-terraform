security_groups = [ "sg-0ad8ec6873fafd140" ]

zone_id = "Z0345275C3S6UDSOR4CU"

components = {
  frontend = {
    instance_type = "t3.micro"
    name = "frontend"
  }
  catalogue = {
    instance_type = "t3.micro"
    name = "catalogue"
  }
  user = {
    instance_type = "t3.micro"
    name = "user"
  }
  cart = {
    instance_type = "t3.micro"
    name = "cart"
  }
  shipping = {
    instance_type = "t3.micro"
    name = "shipping"
  }
  payment = {
    instance_type = "t3.micro"
    name = "payment"
  }

}