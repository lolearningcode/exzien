provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "drift_test" {
  bucket = "exzien-drift-test-bucket-1234567"  # Make this unique

  tags = {
    Purpose = "DriftTest"
  }
}