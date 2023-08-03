# Declare your backends and other terraform configuration here
# This is an example for using the consul backend.
terraform {
  backend "consul" {
    path = "test_module/simple"
  }
}


module "example" {
  source = "../../"
  # dummy  = "test"
}
