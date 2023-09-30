variable "cidr" {
  type        = string
  default     = "10.5.0.0/16"
  description = "this is cidr block for vpc"
}

variable "region" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
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

# variable "subnet_map" {
#   type = list(map(string))
# }

