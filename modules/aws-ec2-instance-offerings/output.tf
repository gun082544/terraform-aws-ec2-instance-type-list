output "instance_types" {
  value = data.aws_ec2_instance_type_offerings.all_instance_types.instance_types
}