resource "aws_subnet" "private_subnets" {
  count             = length(var.sub_priv_cidr_list)
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.sub_priv_cidr_list[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    "Name" = "private-subnet-tf"
  }
}