terraform {
  backend "consul" {
    scheme = "http"
    path   = "terraform/cloudflare-cvmfs"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.20.1"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.14.0"
    }
  }
}
