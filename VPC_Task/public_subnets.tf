# Private Subnets
resource "aws_subnet" "public_subnet1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.pub_subnet1}"
    availability_zone = "${var.az_1a}"
  tags = {
    Environment = "${var.Environment}"
    Department = "${var.Department}"
    Team = "${var.Team}"
    Created_by = "${var.Created_by}"
  }
}

resource "aws_subnet" "public_subnet2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.pub_subnet2}"
    availability_zone = "${var.az_1b}"
  tags = {
    Environment = "${var.Environment}"
    Department = "${var.Department}"
    Team = "${var.Team}"
    Created_by = "${var.Created_by}"
  }
}

resource "aws_subnet" "public_subnet3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.pub_subnet3}"
    availability_zone = "${var.az_1c}"
  tags = {
    Environment = "${var.Environment}"
    Department = "${var.Department}"
    Team = "${var.Team}"
    Created_by = "${var.Created_by}"
  }
}