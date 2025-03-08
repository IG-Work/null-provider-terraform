# null-provider-terraform

The **null_data_source** data source implements the standard data source lifecycle but does not interact with any external APIs.

Historically, the null_data_source was typically used to construct intermediate values to re-use elsewhere in configuration. The same can now be achieved using locals or the terraform_data resource type in Terraform 1.4 and later.


# Null Provider Example

This example demonstrates how to use the `null` provider in Terraform. The `null` provider allows you to create resources that don't actually exist but can be used to execute provisioners or interact with other systems.

## Usage:
- `terraform init` to initialize the Terraform configuration.
- `terraform apply` to apply the configuration and execute the `local-exec` provisioner.

It simply prints "Hello from Null Provider!".
