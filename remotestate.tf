terraform {
  backend "s3" {
    bucket = "akshai183tf-state"
    key    = "statedev.tfstate"
    region = "us-east-1"
  }
}