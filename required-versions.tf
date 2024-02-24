terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.37"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "akshai183statefile"
    key    = "akshai.tfstate"
    region = "us-east-1"
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "akshai-state-lock-dynamo"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}