variable "fruits" {
    default = ["apple","orange"]
}
output "test" {
    value = element(var.fruits,1)
}