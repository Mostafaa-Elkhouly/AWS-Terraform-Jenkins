#module output attributes
output "pub_subnets" {
  value = aws_subnet.public_subnets
}

output "priv_subnets" {
  value = aws_subnet.private_subnets
}

output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "vpc_cidr" {
  value = aws_vpc.myvpc.cidr_block
}

output "security_group_ssh" {
  value = aws_security_group.ssh_port3000_sg.id
}

output "ssh_sg" {
  value = aws_security_group.ssh_sg.id
}

output "ssh_port3000_sg" {
  value = aws_security_group.ssh_port3000_sg.id
}

