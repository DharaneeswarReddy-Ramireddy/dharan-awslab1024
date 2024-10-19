# Create the IAM User

resource "aws_iam_user" "sidecar-dharan" {

  name = var.user_name

}



# Policy document

data "aws_iam_policy_document" "lambda_invoke_policy" {

  statement {

    actions = [

      "lambda:InvokeFunction"

    ]

    resources = ["*"]  # Allows invoking any Lambda function

  }

}



# Create the policy

resource "aws_iam_policy" "lambda_invoke" {

  name        = "${var.user_name}_lambda_invoke_policy"

  description = "Policy to allow ${var.user_name} to invoke Lambda functions"

  policy      = data.aws_iam_policy_document.lambda_invoke_policy.json

}



# Attach the policy

resource "aws_iam_user_policy_attachment" "sidecar_lambda_invoke" {

  user       = aws_iam_user.sidecar-dharan.name

  policy_arn = aws_iam_policy.lambda_invoke.arn

}



# Create an access key

resource "aws_iam_access_key" "sidecar_access_key" {

  user = aws_iam_user.sidecar-dharan.name

}


