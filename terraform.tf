terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.22.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.21.0"
    }
  }
}
