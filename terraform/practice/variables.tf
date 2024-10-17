# variables.tf

variable "region" {

  description = "My AWS region for terraform project"

  default     = "us-east-1"

}



variable "bucket_name" {

  description = "The name of the S3 bucket"

  type        = string

  default     = "dharan-my-bucket-${866934333672}"

}


