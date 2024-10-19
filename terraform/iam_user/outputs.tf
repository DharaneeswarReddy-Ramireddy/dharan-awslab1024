# Access Key ID

output "access_key_id" {

  value = aws_iam_access_key.sidecar_access_key.id

}



# secure output

output "access_key_secret" {

  value     = aws_iam_access_key.sidecar_access_key.secret

  sensitive = true

}


