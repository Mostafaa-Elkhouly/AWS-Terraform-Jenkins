terraform {
  backend "s3" {
    bucket         = "terraform-backend-state-bucket-iti"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    profile        = "admin"
    dynamodb_table = "state-lock"
  }
}