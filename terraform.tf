terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.19.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.20.1"
    }
  }
}
