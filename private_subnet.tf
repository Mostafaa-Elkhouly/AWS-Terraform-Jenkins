resource "aws_subnet" "private_subnet_az1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.5.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "private_subnet_az1-tf"
  }
}

resource "aws_subnet" "private_subnet_az2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.5.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "private_subnet_az2-tf"
  }
}