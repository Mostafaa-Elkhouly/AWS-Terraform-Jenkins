terraform {
  backend "s3" {
    bucket         = var.s3_bucket_name
    key            = "terraform.tfstate"
    region         = "us-east-1"
    profile        = "admin"
    dynamodb_table = "state-lock"
  }
}