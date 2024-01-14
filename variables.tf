variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}
variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     = "N. Virginia"
}
variable "instance_type" {
  description = "instance type for ec2"
  default     = "t2.large"
}
variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-0df4b2961410d4cff"
}
variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
  default     = "mrcloudbook-cicd-bucket"
}

variable "acl" {
  description = "The ACL (Access Control List) for the S3 bucket"
  type        = string
  default     = "private"
}
