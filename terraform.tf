terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.86.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "4.6.0"
    }
  }
}
