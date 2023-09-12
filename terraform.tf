terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.2"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.19.0"
    }
  }
}
