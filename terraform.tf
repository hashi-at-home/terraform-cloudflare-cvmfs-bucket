terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "4.5.0"
    }
  }
}
