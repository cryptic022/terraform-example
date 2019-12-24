# You should change the bucket name. S3 bucket name are  globally unique
variable "bucket_name" {
  type        = string
  description = "Bucket name which we will create in AWS. It should be unique"
  default     = "tf-state"
}

variable "environment" {
  type        = string
  description = "Current Environment"
  default     = "dev"
}

