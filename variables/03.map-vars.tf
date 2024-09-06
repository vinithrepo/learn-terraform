variable "fruit_stock" {
  default = {
    apple = 100
    banana = "twenty"
    guva = 300

  }
}
//ex1
output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}
//ex2
output "fruit_stock" {
  value = " ${var.fruit_stock["apple"]} , ${var.fruit_stock["guva"]}"
}
//ex3
//output "fruit_stock" {
  //value = var.fruit_stock["banana"] , var.fruit_stock["guva"]
//}
// variable in a combination of any other string then  it needs to be with in ${} ## ex2 ##