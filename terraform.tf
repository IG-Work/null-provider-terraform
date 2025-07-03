terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.3"
    }
  }
}

/*data "terraform_remote_state" "test" {
  backend = "remote"

  config = {
    organization = "test-yashi"
    workspaces = {
          name = "random-provider-terraform"
    }
  }
}*/

provider "null" {
# we can add configurations here
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello from Null Provider for the Testing!"
  }
}
