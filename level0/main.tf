resource "aws_s3_bucket" "remote_state" {
  bucket = "terraform-remote-state-keenson1"
}

resource "aws_dynamodb_table" "terraform-remote-state" {
  name           = "terraform-remote-state"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

