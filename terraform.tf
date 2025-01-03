terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "4.1.0"
    }
  }
}
