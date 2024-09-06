variable "fruit_stock" {
  default = {
    apple = 100
    banana = "twenty"
    guva = 300

  }
}

output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}
output "fruit_stock_banana" {
  value = " ${var.fruit_stock["banana"]} , ${var.fruit_stock["guva"]}"
}