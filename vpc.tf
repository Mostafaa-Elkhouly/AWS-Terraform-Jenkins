# Create a VPC
resource "aws_vpc" "myvpc-1" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    name = "vpc-tf"
  }
}