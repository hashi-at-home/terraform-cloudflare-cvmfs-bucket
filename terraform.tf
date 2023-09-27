terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.18.1"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.19.0"
    }
  }
}
