resource "local_file" "cat" {
    filename = "/root/cat.txt"
    content = "We love cats :/!"
    file_permission = "0700"
}