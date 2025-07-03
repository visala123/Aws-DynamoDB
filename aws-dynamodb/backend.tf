terraform {
  backend "s3" {
    bucket = "terraform-state-v"
    key    = "terraform.tfstate.DynamoDB"
    region = "ap-northeast-2"
  }
}
