terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "4.6.0"
    }
  }
}
