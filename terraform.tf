terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.56.1"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "4.1.0"
    }
  }
}
