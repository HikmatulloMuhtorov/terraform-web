data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "template_file" "userdata" {
  template = file("userdata.sh")
  vars = {
    environment = var.env
  }
}

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

data "terraform_remote_state" "target_group_arn" {
  backend = "s3"
  config = {
    bucket = "aws-session-may2022-remote-backend-hik"
    key    = "alb/terraform.tfstate"
    region = "us-east-1"
  }
}