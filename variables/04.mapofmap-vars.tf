variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 100
      price = 5
      for_sale = true
      location = "warangal"
    }
    banana = {
      stock = 200
      price = 2
      for_sale = true
      location = "hanumakonda"
    }
  }
}

output "fruit_price" {
  value = var.fruit_stock_with_price["apple"].location
}