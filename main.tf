module "aws_ec2_instance_types_list" {
  source = "./modules/aws-ec2-instance-type"
  aws_az_ec2_itl = var.aws_availability_zone
}