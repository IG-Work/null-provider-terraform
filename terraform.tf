terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.3"
    }
  }
}

provider "null" {
# we can add configurations here
}

resource "null_resource" "example" {
  count = 3

  provisioner "local-exec" {
    command = "echo Hello from Null Provider with count index ${count.index}"
  }
}
