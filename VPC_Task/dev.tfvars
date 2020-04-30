# Values
region = "us-east-1"
key_name = "nataliyas_state_class_tf"
vpc_cidr = "192.168.0.0/16"

# private and public subnets cidr blocks
priv_subnet1 = "192.168.1.0/24"
priv_subnet2 = "192.168.2.0/24"
priv_subnet3 = "192.168.3.0/24"
pub_subnet1 = "192.168.101.0/24"
pub_subnet2 = "192.168.102.0/24"
pub_subnet3 = "192.168.103.0/24"

# availability zones for subnets
az_1a = "us-east-1a"
az_1b = "us-east-1b"
az_1c = "us-east-1c"

# IG and NAT routes
nat_cidr_block = "0.0.0.0/0"
ig_cidr_block = "0.0.0.0/0"

# ec2 instance
ami = "ami-0323c3dd2da7fb37d"
instance_type = "t2.micro"
public_subnet_az = "us-east-1b"

# security group
sg_name = "allow_tls"
ingress_cidr_blocks = ["0.0.0.0/0"]
egress_cidr_blocks = ["0.0.0.0/0"]

# tags
Environment = "Dev"
Department = "IT"
Team = "Infrastructure"
Created_by = "Nataliya"
