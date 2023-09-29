resource "aws_route_table" "myrt" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }

  tags = {
    Name = "public-route-tf"
  }
}

data "aws_ec2_local_gateway_route_table" "myrt-1" {
  outpost_arn = "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef"
}

resource "aws_ec2_local_gateway_route_table_vpc_association" "vpc-tr-1" {
  local_gateway_route_table_id = data.aws_ec2_local_gateway_route_table.myrt-1.id
  vpc_id                       = aws_vpc.myvpc-1.id
}