# Translation
variable "region" {}
variable "key_name" {}
variable "vpc_cidr" {}

variable "priv_subnet1" {}
variable "priv_subnet2" {}
variable "priv_subnet3" {}
variable "pub_subnet1" {}
variable "pub_subnet2" {}
variable "pub_subnet3" {}

variable "az_1a" {}
variable "az_1b" {}
variable "az_1c" {}

variable "nat_cidr_block" {}
variable "ig_cidr_block" {}

variable "ami" {}
variable "instance_type" {}
variable "public_subnet_az" {}
variable "sg_name" {}

variable "ingress_cidr_blocks" {type = "list"}
variable "egress_cidr_blocks" {type = "list"}

variable "Environment" {}
variable "Department" {}
variable "Team" {}
variable "Created_by" {}
