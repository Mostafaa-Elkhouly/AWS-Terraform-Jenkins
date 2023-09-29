resource "aws_nat_gateway" "mynat" {
  subnet_id     = aws_subnet.mysubnet-private.id

  tags = {
    Name = "nat-tf"
  }
}
