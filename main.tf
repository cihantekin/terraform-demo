resource "local_file" "pet" {
    filename = var.filename
    content = "My favorite pet is ${random_pet.my-pet.id}"
    file_permission = "0700"

    // if there is some changes, first create then destroy old one
    lifecycle {
      create_before_destroy = true
    }
    
    // if there is some changes, protect the old one
    # lifecycle {
    #   prevent_destroy = true
    # }

    // ignore the changes on this attribute
    # lifecycle {
    #   ignore_changes = [
    #     content
    #   ]
    # }
}

resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}

output "pet-name" {
  value = random_pet.my-pet.id
  description = "Record the value of pet Id generated by the random_pet resource"
}