cidr_block             = "172.0.0.0/16"
work_region            = "us-east-1"
ami_id                 = "ami-06e46074ae430fba6"
instance_type          = "t2.micro"
subnets_priv_cidr_list = ["172.0.1.0/24", "172.0.2.0/24"]
subnets_pub_cidr_list  = ["172.0.3.0/24", "172.0.4.0/24"]
subnets_azs            = ["us-east-1a", "us-east-1b"]