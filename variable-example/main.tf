# This example will work with terraform 12 and higher
terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "variable_bucket" {
  bucket = var.bucket_name
  acl    = "private"
  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "tf_lock" {
  name         = var.dynamo_db_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
