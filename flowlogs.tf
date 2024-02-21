resource "aws_flow_log" "example" {
  log_destination      = aws_s3_bucket.akshaivpcflowlogs.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.default.id
}

resource "aws_s3_bucket" "akshaivpcflowlogs" {
  bucket = "akshaivpcflowlogs"
  depends_on = [
    aws_s3_bucket.akshaivpc1
  ]
}

resource "aws_s3_bucket" "akshaivpc1" {
  bucket = "akshaivpc1"
  depends_on = [
    aws_s3_bucket.akshaivpc2
  ]
}

resource "aws_s3_bucket" "akshaivpc2" {
  bucket = "akshaivpc2"
  depends_on = [
    aws_s3_bucket.akshaivpc3
  ]
}

resource "aws_s3_bucket" "akshaivpc3" {
  bucket = "akshaivpc3"
}
