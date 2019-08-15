provider "aws" {
  region     = "us-west-2"
  access_key = "XXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXX"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "my-tf-test-bucket-gavara"
  acl    = "private"
  region = "us-west-2"

  tags = {
    Name        = "My First TF Bucket"
    Environment = "Test"
  }
}
