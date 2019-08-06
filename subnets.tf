resource "aws_subnet" "public" {
  count      = "${length(var.public_subnet)}"
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.3.0/24"

  tags = {
      Name = "${var.Name}.public"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}



resource "aws_subnet" "private" {
  count      = "${length(var.private_subnet)}"
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.4.0/24"

  tags = {
      Name = "${var.Name}.private"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}