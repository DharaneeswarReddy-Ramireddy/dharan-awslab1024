# outputs.tf

output "bucket_fqdn" {

  description = "The fully qualified domain name of the S3 bucket"

  value       = aws_s3_bucket.my_bucket.bucket_domain_name

}
