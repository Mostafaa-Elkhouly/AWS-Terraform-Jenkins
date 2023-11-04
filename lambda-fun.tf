# creating a zip file from python code to use in lambda function
data "archive_file" "lambda-code" {
  type        = "zip"
  source_file = "lambda.py"
  output_path = "lambda_function.zip"
}

# add permission to allow s3 bucket to invoke the lambda function
resource "aws_lambda_permission" "allow_bucket" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lambda_function.arn
  principal     = "s3.amazonaws.com"
}

# create lambda function
resource "aws_lambda_function" "lambda_function" {
  function_name    = "lab-lambda-function"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "python3.8"
  handler          = "lambda.lambda_handler"
  filename         = "lambda_function.zip"
  source_code_hash = filebase64sha256("lambda_function.zip")
}