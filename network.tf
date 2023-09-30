module "mynetwork"{
    source= "./network"
    cidr=var.cidr
    sub_pub_cidr_list=var.sub_pub
    azs=var.azs56
    sub_priv_cidr_list=var.sub_priv
}