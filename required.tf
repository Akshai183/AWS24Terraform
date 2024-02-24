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
