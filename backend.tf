provider "aws" {
  # ...
}

backend "s3" {
  # Backend configuration for storing Terraform state
}
# backend.tf

backend "s3" {
  # other backend configurations
  region = "us-east-1"
}
