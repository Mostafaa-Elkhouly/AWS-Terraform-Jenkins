resource "aws_subnet" "public_subnet_az1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "public_subnet_az1-tf"
  }
}

resource "aws_subnet" "public_subnet_az2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "public_subnet_az2-tf"
  }
}