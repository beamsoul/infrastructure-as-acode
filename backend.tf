terraform  {
    backend "s3" {
        bucket = "infrastructure-wordpress-janna"
        region = "us-west-2a"
        key = "infra.state"
    }
}   