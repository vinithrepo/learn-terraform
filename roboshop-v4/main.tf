module "components" {
  for_each = var.components

  source = "./v4"

  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids
  name  = each.value["name"]

}

output "compenents" {
  value = module.components
}