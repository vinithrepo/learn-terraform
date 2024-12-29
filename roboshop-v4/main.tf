module "components" {
  for_each = var.components

  source = "./v4"

  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  name  = var.name

}