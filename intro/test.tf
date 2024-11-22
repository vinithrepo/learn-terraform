//1
output "xyz" {
  value = "Hello world"
}

//2
variable "test" {
  default = "vinith"
}

output "test2" {
  value = var.test
}
//3 string variable com plain variable
variable "fruits" {
  default = "orange"
}
output "fruit" {
  value = var.fruits
}
//4 List variable

variable "names" {
  default = [
    "surya",
    "vinay"
  ]
}
output "names"{
  value =  var.names[0]
}


