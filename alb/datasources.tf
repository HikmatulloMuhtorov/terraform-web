data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "aws-session-may2022-remote-backend-hik"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "pub_sub_ids" {
  backend = "s3"
  config = {
    bucket = "aws-session-may2022-remote-backend-hik"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "priv_sub_ids" {
  backend = "s3"
  config = {
    bucket = "aws-session-may2022-remote-backend-hik"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
}