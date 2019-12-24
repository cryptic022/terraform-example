terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "variable_bucket" {
}
