terraform  {
    backend "s3" {
        bucket = "infrastructure-wordpress-janna"
        region = "${var.region}"
        key = "infra.state"
    }
}   