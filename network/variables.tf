#module input arguments
variable "cidr" {
  type = string
}

variable "region" {
  type = string
}

variable "sub_pub_cidr_list" {
  type = list(any)
}

variable "sub_priv_cidr_list" {
  type = list(any)
}

variable "azs" {
  type = list(any)
}