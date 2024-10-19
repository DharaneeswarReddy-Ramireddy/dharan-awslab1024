variable "aws_region" {

  description = "The AWS region to create resources in"

  type        = string

  default     = "us-west-2"  # You can change this to your preferred region

}



variable "user_name" {

  description = "IAM user name"

  type        = string

  default     = "sidecar-dharan"

}


