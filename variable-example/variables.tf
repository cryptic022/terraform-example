variable "bucket_name" {
  type        = string
  description = "Bucket name which we will create in AWS. It should be unique"
}

variable "environment" {
  type        = string
  description = "Current Environment"
}

variable "dynamo_db_name" {
  type        = string
  description = "Dynamo DB table will be created by this name"
}

