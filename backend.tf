terraform  {
    backend "s3" {
        bucket = "wordpress-janna"
        region = "us-west-2"
        key = "infra.state"
    }
}   