# generate public and private key pair
resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# create aws key pair by public key from tls_private_key 
resource "aws_key_pair" "my_aws_key" {
  key_name   = "my_key"
  public_key = tls_private_key.my_key.public_key_openssh
}

# store private key pair into my machine to use it with ssh connection 
resource "local_file" "private_key" {
  filename = ".keys/my-key.pem"
  content  = tls_private_key.my_key.private_key_pem
}

# resource "local_file" "public_key" {
#   filename = ".keys/my-key.pub"
#   content  = tls_private_key.my_key.public_key_openssh
# }
