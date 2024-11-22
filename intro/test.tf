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
  //[ "surya", "vinay"]
}
output "names"{
  value =  var.names[0]
}
// map of map variable

variable "fruit_details" {
  default = {
    apple = {
      stock = 200
      region = "india"
      available = true
    }
    orange = {
      stock = 500
      region = "australia"
      available = false
    }
  }
}

output "apple_region" {
  value = var.fruit_details["apple"].region
}
output "orange_availability" {
  value = var.fruit_details["orange"].available
}

//map variable

variable "fruit_quantity" {
  default = {
    apple = 100
    banana = 500
  }
}
output "apple_quantity" {
  value = var.fruit_quantity["apple"]
}

output "testing" {
  value = "this is vinith from kolkata"
}