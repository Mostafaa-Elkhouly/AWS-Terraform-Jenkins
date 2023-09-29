resource "aws_route_table_association" "private_subnet_az1_association" {
  subnet_id      = aws_subnet.private_subnet_az1.id
  route_table_id = aws_route_table.myrtb_private.id
}

resource "aws_route_table_association" "private_subnet_az2_association" {
  subnet_id      = aws_subnet.private_subnet_az2.id
  route_table_id = aws_route_table.myrtb_private.id
}

resource "aws_route" "private_subnet_route" {
  route_table_id         = aws_route_table.myrtb_private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.mynat.id
}