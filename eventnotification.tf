# create an event notification that trigger changes at s3 bucket and use lambda function to sent mail
resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = var.s3_bucket_name

  lambda_function {
    lambda_function_arn = aws_lambda_function.lambda_function.arn
    events              = ["s3:ObjectCreated:Put"]
    filter_suffix       = ".tfstate"
  }

  depends_on = [aws_lambda_permission.allow_bucket]
}