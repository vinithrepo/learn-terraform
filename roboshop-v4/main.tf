module "newestation" {
  for_each = var.components

  source = "./newestation" #v4

  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids
  name  = each.value["name"]

}
