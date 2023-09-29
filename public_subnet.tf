resource "aws_subnet" "public_subnet_az1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.5.3.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    "Name" = "public_subnet_az1-tf"
  }
}

resource "aws_subnet" "public_subnet_az2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.5.4.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    "Name" = "public_subnet_az2-tf"
  }
}