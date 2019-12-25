terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-west-2"
}

module "private_s3_bucket" {
  source = "yukihira1992/s3-private-bucket/aws"

  bucket             = "my-example-bucket"
  region             = "ap-northeast-1"
  versioning_enabled = true
  sse_algorithm      = "AES256"
  tags = {
    Environment = "dev"
  }
}

resource "aws_s3_bucket" "variable_bucket" {
  bucket = "bucket_test"
  acl    = "private"
  versioning {
    enabled = true
  }
}
