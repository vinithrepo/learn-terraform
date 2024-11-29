module "module_test" {
  source = "./child-module"
}
output "test2" {
  value = module.module_test
}