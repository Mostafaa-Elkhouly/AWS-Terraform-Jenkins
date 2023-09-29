resource "aws_instance" "myec2-public" {
  ami                    = "ami-06e46074ae430fba6"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet_az1.id
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]
  key_name               = aws_key_pair.my_aws_key.id

  user_data = <<-EOF
            #!/bin/bash
            echo '${tls_private_key.my_key.private_key_pem}' > /home/ec2-user/private_key.pem
            chmod 400 private_key.pem
          EOF

  tags = {
    Name = "bastionHost-public-instance-tf"
  }
}