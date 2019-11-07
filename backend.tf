terraform  {
    backend "s3" {
        bucket = "beam-soul"
        region = "us-west-2"
        key = "infra.state"
    }
}   