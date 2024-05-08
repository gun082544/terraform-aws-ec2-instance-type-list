output "instance_types_spec" {
  value = {
    for instance_type_spec in data.aws_ec2_instance_type.aws_ec2_instance_type_spec :
    instance_type_spec.instance_type =>  {
      Name = instance_type_spec.instance_type
      CPU = "${instance_type_spec.default_vcpus} Cores",
      Memory = "${instance_type_spec.memory_size} MiB",
      Storage = instance_type_spec.total_instance_storage == null ? "No storage included" : "${instance_type_spec.total_instance_storage} GB"
    }
  }
}
