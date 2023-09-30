resource "aws_subnet" "public_subnets" {
  count                   = length(var.sub_pub_cidr_list)
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.sub_pub_cidr_list[count.index]
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = true

  tags = {
    "Name" = "public-subnet-tf"
  }
}