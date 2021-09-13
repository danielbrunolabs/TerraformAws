resource "aws_s3_bucket" "terraform_state" {
    bucket = var.s3_bucket_name
    acl    = "private"
}

resource "aws_kinesis_stream" "kinesis_stream" {
  name                = "kinesis-stream"
  shard_count         = 1
  retention_period    = 24
  encryption_type     = "KMS"
  kms_key_id          = "alias/aws/kinesis"
  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes"
  ]

  tags = {
    Terraform   = true
    Environment = "test"
  }
}