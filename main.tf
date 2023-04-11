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


# The S3 API in cloudflare R2 is not fully implemented yet.

#tfsec:ignore:aws-s3-ignore-public-acls tfsec:ignore:aws-s3-no-public-buckets tfsec:ignore:aws-s3-block-public-acls tfsec:ignore:aws-s3-block-public-policy tfsec:ignore:aws-s3-enable-bucket-encryption tfsec:ignore:aws-s3-encryption-customer-key tfsec:ignore:aws-s3-enable-bucket-logging tfsec:ignore:aws-s3-specify-public-access-block tfsec:ignore:aws-s3-enable-versioning
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  # versioning {
  #   enabled = true
  # }
}
