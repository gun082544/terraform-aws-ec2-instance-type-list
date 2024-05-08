data "aws_ec2_instance_type_offerings" "all_instance_types" {
    filter {
    name   = "location"
    values = var.aws_az_ec2_io
  }
  location_type = "availability-zone"
}
