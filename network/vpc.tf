# Create a VPC
resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr

  tags = {
    "Name" = "vpc-tf"
  }
}