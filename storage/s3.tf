provider "aws" {
  region = "var.aws_region"
access_key=var.AWS_ACCESS_KEY
secret_key=var.AWS_SECRET_ACCESS_KEY
}

resource "aws_s3_bucket" "bucket1" {
count=2
tags={name="test-bucket-${count.index}"
}
}


