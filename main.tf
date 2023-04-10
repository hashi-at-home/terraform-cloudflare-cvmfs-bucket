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

variable "bucket_name" {
  type        = string
  description = "name of the s3 bucket"
  default     = "test-bucket"
}

variable "credentials" {
  type = map(string)
  default = {
    mount = "cloudflare"
    name  = "r2"
  }
  description = "Map of where Vault stores the credentials."
}

data "vault_kv_secret_v2" "cloudflare" {
  mount = var.credentials.mount
  name  = var.credentials.name
}

provider "aws" {
  access_key                  = data.vault_kv_secret_v2.cloudflare.data.access_key_id
  secret_key                  = data.vault_kv_secret_v2.cloudflare.data.secret_access_key
  skip_credentials_validation = true
  skip_region_validation      = true
  skip_requesting_account_id  = true
  endpoints {
    s3 = "https://${data.vault_kv_secret_v2.cloudflare.data.account_id}.r2.cloudflarestorage.com"
  }
}


resource "aws_s3_bucket" "test_bucket" {
  bucket = var.bucket_name
}
