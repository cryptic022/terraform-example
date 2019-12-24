terraform {
  backend "s3" {
    # This bucket should already exists then terraform will be able to store tfstate at this bucket
    # Change bucket name to your bucket where you want to store tfstate file
    bucket = "terraform-example-test"
    key    = "StateLockID"
    region = "us-west-2"

    # This table should already exists. Change the dynamo db name to your table name
    dynamodb_table = "tf-lock"
    encrypt        = true
  }
}
