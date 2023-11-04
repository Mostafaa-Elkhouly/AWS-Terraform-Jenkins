# create role for lambda function to send mails using SES
resource "aws_iam_role" "lambda_role" {
  name               = var.lambda_role_name
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

# permissions to send mails using ses service
resource "aws_iam_policy" "ses_policy" {
  name        = "ses-policy"
  description = "Allows sending emails using SES"
  policy      = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ses:SendEmail",
        "ses:SendRawEmail"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

# attach policy to role
resource "aws_iam_role_policy_attachment" "ses_policy_attachment" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.ses_policy.arn
}