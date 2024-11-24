variable "fruits" {
    default = ["apple","orange"]
}
output "test" {
    value = element(var.fruits,4)

}
output "test2" {
    value = try(var.fruits["juice"], 0)
}