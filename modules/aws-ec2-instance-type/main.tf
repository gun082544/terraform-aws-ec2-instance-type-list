module "aws_ec2_instance_types_list" {
  source = "../aws-ec2-instance-offerings"
  aws_az_ec2_io = var.aws_az_ec2_itl
}


data "aws_ec2_instance_type" "aws_ec2_instance_type_spec" {
  instance_type = each.value
  for_each = toset(module.aws_ec2_instance_types_list.instance_types)
}