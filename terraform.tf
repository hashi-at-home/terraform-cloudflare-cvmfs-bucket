terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.32.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.24.0"
    }
  }
}
