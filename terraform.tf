terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.86.1"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "4.6.0"
    }
  }
}
