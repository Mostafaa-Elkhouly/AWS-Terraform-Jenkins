#default values for declared variables
cidr_block             = "10.0.0.0/16"
work_region            = "us-east-1"
ami_id                 = "ami-06e46074ae430fba6"
instance_type          = "t2.micro"
subnets_pub_cidr_list  = ["10.0.1.0/24", "10.0.2.0/24"]
subnets_priv_cidr_list = ["10.0.3.0/24", "10.0.4.0/24"]
subnets_azs            = ["us-east-1a", "us-east-1b"]

#list of maps 
# subnet_map = [

#   {
#     cidr = "10.5.1.0/24",
#     type = "private",
#     az   = "us-east-1a"
#   },
#   {
#     cidr = "10.5.2.0/24",
#     type = "private",
#     az   = "us-east-1b"
#   },
#   {
#     cidr = "10.5.3.0/24",
#     type = "public",
#     az   = "us-east-1a"
#   },
#   {
#     cidr = "10.5.4.0/24",
#     type = "public",
#     az   = "us-east-1b"
#   }
# ]