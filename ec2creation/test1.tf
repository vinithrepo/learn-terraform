variable "fruits" {
    default = ["apple","orange"]
}
output "test" {
    value = element(var.fruits,4)

}
output "test2" {
    value = try(var.fruits["juice"], 0)
}

variable "fruits_map" {
    default = {
        apple = 100
        banana = 500
    }
}

output "test3" {
    value = try(var.fruits_map["banana"], "NA")
}

variable "fruits_map_of_map" {
    default = {
        apple = {
         stock = 200
         price = 2
        }
        banana = {
            stock = "Not Available"
            price = 1
        }
    }
}

output "test4" {
    value = lookup(var.fruits_map_of_map["apple"],"price" ,"na")
}

output "test5" {
    value = lookup(var.fruits_map_of_map["banana"],"stock" ,"na")
}
output "test6" {
    value = lookup(var.fruits_map_of_map["banana"],"availability" ,"na")
}