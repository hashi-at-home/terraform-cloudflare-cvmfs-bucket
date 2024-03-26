terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "4.0.0"
    }
  }
}
