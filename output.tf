output "VPC" {
  value = "${aws_vpc.dev.id}"
}

output "public_subnet_private" {
  value = "${aws.subnet.id}"
}

output "private_subnet_public" {
  value = "${aws.subnet.id}"
}

output "aws_sec_group" {
  value = "${aws_security_group.id}"
}

output "key_name" {
  value = "${var.key_name}"
} 
output "region" {
  value = "${var.region}"
}
