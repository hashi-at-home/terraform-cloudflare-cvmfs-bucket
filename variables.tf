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
