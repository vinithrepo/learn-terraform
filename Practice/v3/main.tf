module "components" {

  for_each                 = var.components

  source                   = "./child-module"

  zone_id                  = var.zone_id
  vpc_security_group_ids   = var.vpc_security_group_ids
  instance_type            = each.value["instance_type"]
  name                     = each.value["name"]
}
