terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.19.0"
    }
  }
}
