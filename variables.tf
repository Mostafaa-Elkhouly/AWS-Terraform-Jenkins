variable "cidr_block" {
  type        = string
  default     = "10.5.0.0/16"
  description = "this is cidr block for vpc"
}

variable "work_region" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "subnets_pub_cidr_list" {
  type = list(any)
}

variable "subnets_priv_cidr_list" {
  type = list(any)
}

variable "subnets_azs" {
  type = list(any)
}

# variable "subnet_map" {
#   type = list(map(string))
# }

variable "lambda_role_name" {
  description = "lambda role name"
  type        = string
}

variable "s3_bucket_name" {
  description = "s3_bucket name"
  type        = string
}

