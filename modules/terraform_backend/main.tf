resource "aws_s3_bucket" "terraform_state" {
    bucket = vars.s3_bucket_name
    acl    = "private"
}