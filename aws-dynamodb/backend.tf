terraform {
  backend "s3" {
    bucket = "terraform-remote-state-v"
    key    = "terraform.tfstate.DynamoDB"
    region = "ap-northeast-2"
  }
}
