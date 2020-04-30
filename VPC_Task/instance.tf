resource "aws_instance" "httpd" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.public_subnet_az}"
  key_name = "${aws_key_pair.us-east-1-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  user_data = "${file("install_httpd.sh")}"

    tags = {
    Environment = "${var.Environment}"
    Department = "${var.Department}"
    Team = "${var.Team}"
    Created_by = "${var.Created_by}"
  }
}