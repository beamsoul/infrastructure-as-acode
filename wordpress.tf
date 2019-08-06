module "wordpress" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.3"
  name = "wordpress"


  # Launch configuration
  lc_name = "wordpress-lc"
  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.public.id}"]
   tags = {
      Name = "${var.Name}.public"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}