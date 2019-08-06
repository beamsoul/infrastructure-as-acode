module "mysql" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.3"
  name = "mysql"


  # Launch configuration
  lc_name = "mysql-lc"
  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.privateDB.id}"]
   tags = {
      Name = "${var.Name}.private"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}