variable "aws_region" {
  type = string
  default = "ap-southeast-1"
}

variable "aws_availability_zone" {
  type = set(string)
  # default = ["ap-southeast-1a"]
}