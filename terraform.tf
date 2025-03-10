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

variable "instance_name" {
  description = "The name of the instance"
  type        = string
  default     = "example-instance"
}

resource "null_resource" "example" {
  count = 3

  provisioner "local-exec" {
    command = "echo Hello from Null Provider with count index ${count.index} and Instance name is ${var.instance_name}"
  }
}
