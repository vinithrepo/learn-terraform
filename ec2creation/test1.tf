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