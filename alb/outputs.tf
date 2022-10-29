output "target_group_arn" {
value = aws_lb_target_group.main.arn
}
output "vpc_id" {
    value = data.terraform_remote_state.vpc.outputs.vpc_id
}
output "public_subnet_id" {
    value = data.terraform_remote_state.pub_sub_ids.outputs.public_subnet_id
}

output "private_subnet_id" {
    value = data.terraform_remote_state.priv_sub_ids.outputs.private_subnet_id
}

