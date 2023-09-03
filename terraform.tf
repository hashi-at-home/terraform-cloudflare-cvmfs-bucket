terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.14.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.20.0"
    }
  }
}
