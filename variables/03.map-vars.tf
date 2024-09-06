variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}

output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}