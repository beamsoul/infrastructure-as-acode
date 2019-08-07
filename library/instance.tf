module "wordpress" {
  source                 = "StayWell/wordpress/aws"
  version                = "0.2.8"

  name                   = "wordpress"
  instance_count         = 3

  ami                    = "ami-01ed306a12b7d1c96"
  instance_type          = "t2.micro"
  key_name               = "winkey-terraf"
  vpc_security_group_ids = ["vpc-0fdce58874d88b2c0"]
  subnet_id              = "subnet-00ea490525fc6fa66"
}
  
tags = {
      Name = "${var.Name}.private"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}