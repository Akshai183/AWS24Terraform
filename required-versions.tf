terraform {
  backend "s3" {
    bucket = "akshai183statefile"
    #dynamodb_table = "akshai-state-lock-dynamo"
    key    = "akshai.tfstate"
    region = "us-east-1"
  }
}
