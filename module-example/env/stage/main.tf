# This example will work with terraform 12 and higher
terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

module "user-module" {
  # Currently we are referring same code for all environment in this example. Ideally We 
  # should maintain git tag for different environment
  # First create repo for customer module
  # Example source = "github.com/customermodule?ref=v0.0.2"
  source = "../../user-module"

  user-bucket-name = "user_bucket_staging"

  game-score-dynamo-name = "GameScores-staging"
}

module "customer-module" {
  # Currently we are referring same code for all environment in this example. Ideally We 
  # should maintain git tag for different environment
  # First create repo for customer module
  # Example source = "github.com/customermodule?ref=v0.0.2"
  source                       = "../../customer-module"
  customer-kinesis-stream-name = "terraform-kinesis-test-staging"
}
