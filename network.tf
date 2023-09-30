#passing module inputs arguments
module "mynetwork" {
  source             = "./network"
  cidr               = var.cidr_block
  region             = var.work_region
  sub_pub_cidr_list  = var.subnets_pub_cidr_list
  sub_priv_cidr_list = var.subnets_priv_cidr_list
  azs                = var.subnets_azs
}