resource "aws_instance" "appHost" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnets[0].id
  vpc_security_group_ids = [aws_security_group.ssh_port3000_sg.id]
  key_name               = aws_key_pair.my_aws_key.id

  tags = {
    Name = "applicationHost-instance-tf"
  }
}