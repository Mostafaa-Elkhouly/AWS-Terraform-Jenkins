cidr               = "172.0.0.0/16"
region             = "us-east-1"
ami_id             = "ami-06e46074ae430fba6"
instance_type      = "t2.micro"
sub_priv_cidr_list = ["172.0.1.0/24", "172.0.2.0/24"]
sub_pub_cidr_list  = ["172.0.3.0/24", "172.0.4.0/24"]
azs                = ["us-east-1a", "us-east-1b"]