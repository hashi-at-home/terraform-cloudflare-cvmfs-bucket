terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.22.0"
    }
  }
}
