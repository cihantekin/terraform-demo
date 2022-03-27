variable "filename" {
  default = [
      "/root/pets.txt",
      "/root/dogs.txt",
      "/root/cats.txt",
  ]
}
variable "content" {
  default = "We love pets! My favourite pet is no pet!"
}
variable "prefix" {
  default = "Mrs"
}
variable "separator" {
  default = "."
}
variable "length" {
  default = "2"
}