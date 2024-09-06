variable "fruits_with_stock" {
  default = {
    apple  = 100
    grapes = 200
  }
}

output "stock" {
  value = try(var.fruits_with_stock["guva"], "NA")
}