resource "aws_db_instance" "dbWordPress" {
    identifier = "dbwordpress"
    engine = "mysql"
    engine_version = "5.7"
    allocated_storage = "${var.allocated_storage}"
    instance_class = "${var.instance_class}"
    vpc_security_group_ids = ["${aws_security_group.sgWordPress.id}"]
    name = "${var.db_name}"
    username = "${var.db_admin}"
    password = "${var.db_password}"
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot = true
    tags {
        Name = "WordPress DB"
    }
}