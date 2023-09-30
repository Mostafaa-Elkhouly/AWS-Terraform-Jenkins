resource "aws_route_table" "myrtb_private" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.mynat.id
  }

  tags = {
    "Name" = "private-route-tf"
  }
}