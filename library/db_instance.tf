resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "beamsoul"
  password             = "jannajanna"
  parameter_group_name = "default.mysql5.7"
  security_groups      = ["${aws_security_group.privateDB.id}"]
  vpc_zone_identifier  = ["${aws_subnet.private.id}"]
  skip_final_snapshot    = true
  }
