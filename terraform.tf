terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.23.0"
    }
  }
}
