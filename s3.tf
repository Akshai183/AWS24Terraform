resource "aws_s3_bucket" "b" {
  bucket = "s3terrafrom183"

  tags = {
    Name        = "s3terrafrom183"
    Environment = "Dev"
  }
}