terraform {
  backend "consul" {
    scheme = "http"
    path   = "terraform/cloudflare-cvmfs"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.10.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "3.19.0"
    }
  }
}
