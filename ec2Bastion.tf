resource "aws_instance" "bastionHost" {
  ami           = var.ami_id
  instance_type = var.instance_type
  # subnet_id     = aws_subnet.public_subnets[0].id
  # vpc_security_group_ids = [aws_security_group.ssh_sg.id]
  subnet_id              = module.mynetwork.pub_subnets[0].id
  vpc_security_group_ids = [module.mynetwork.ssh_sg]
  key_name               = aws_key_pair.my_aws_key.id

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > inventory"  
  }
  
  user_data = <<-EOF
            #!/bin/bash
            echo '${tls_private_key.my_key.private_key_pem}' > /home/ec2-user/private_key.pem
            chmod 400 private_key.pem
            EOF

  tags = {
    Name = "bastionHost-instance-tf"
  }
}