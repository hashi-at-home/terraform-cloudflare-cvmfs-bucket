terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.20.1"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.21.0"
    }
  }
}
