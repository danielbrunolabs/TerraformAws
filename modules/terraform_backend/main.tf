resource "aws_s3_bucket" "terraform_state" {
    bucket = var.s3_bucket_name
    acl    = "private"
}