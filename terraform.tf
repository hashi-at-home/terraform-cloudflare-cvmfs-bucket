terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.32.1"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.23.0"
    }
  }
}
