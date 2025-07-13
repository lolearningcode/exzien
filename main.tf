terraform {
  backend "s3" {
    bucket = "exzien-tfstate-bucket"         # ← Create this bucket first or use an existing one
    key    = "state/drift-test/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "drift_test" {
  bucket = "exzien-drift-test-bucket-1234567"  # Must be globally unique

  tags = {
    Purpose = "DriftTest"
  }
}