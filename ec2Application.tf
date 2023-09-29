resource "aws_instance" "myec2-private" {
  ami                    = "ami-06e46074ae430fba6"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_subnet_az1.id
  vpc_security_group_ids = [aws_security_group.ssh_port3000_sg.id]
  key_name               = aws_key_pair.my_aws_key.id

  tags = {
    Name = "applicationHost-instance-tf"
  }
}