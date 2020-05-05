resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.main.id}"

  # ingress {
  #   description = "TLS from VPC"
  #   from_port   = 80
  #   to_port     = 80
  #   protocol    = "tcp"
  #   cidr_blocks = ["${var.ingress_cidr_blocks}"]
  # }


  # ingress {
  #   description = "TLS from VPC"
  #   from_port   = 443
  #   to_port     = 443
  #   protocol    = "tcp"
  #   cidr_blocks = ["${var.ingress_cidr_blocks}"]
  # }

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ingress_cidr_blocks}"]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["${var.ingress_cidr_blocks}"]
  }
  ingress {
    description = "TLS from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.egress_cidr_blocks}"]
  }
  tags = "${var.tags}"
}
