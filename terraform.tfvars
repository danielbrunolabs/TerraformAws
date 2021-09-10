variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "aws_s3_bucket_name" {
  default = "terraform-state-dan-20210909"
}