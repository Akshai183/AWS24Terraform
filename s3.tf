resource "aws_s3_bucket" "b" {
  bucket = "akshaitestingmetaargs"

  tags = {
    Name        = "akshaitestingmetaargs"
    Environment = "Dev"
  }
  lifecycle {
    create_before_destroy = true
  }
}