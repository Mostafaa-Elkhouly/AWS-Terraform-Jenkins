# Create a VPC
resource "aws_vpc" "myvpc" {
  cidr_block = "10.5.0.0/16"

  tags = {
    "Name" = "vpc-tf"
  }
}