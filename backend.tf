terraform  {
    backend "s3" {
        bucket = "infrastructure-wordpress-janna"
        region = "us-east-2"
        key = "infra.state"
    }
}   