resource "aws_internet_gateway" "mygw-1" {
  vpc_id = aws_vpc.myvpc-1.id

  tags = {
    Name = "gw-tf"
  }
}