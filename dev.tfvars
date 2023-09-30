cidr               = "10.5.0.0/16"
region             = "eu-central-1"
ami_id             = "ami-06e46074ae430fba6"
instance_type      = "t2.micro"
sub_priv_cidr_list = ["10.5.1.0/24", "10.5.2.0/24"]
sub_pub_cidr_list  = ["10.5.3.0/24", "10.5.4.0/24"]
azs                = ["eu-central-1a", "eu-central-1b"]