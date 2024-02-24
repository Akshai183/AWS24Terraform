terraform {
  required_version = "= 1.7.4" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 5.0.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "akshai183statefile"
    #dynamodb_table = "akshai-state-lock-dynamo"
    key    = "akshai.tfstate"
    region = "us-east-1"
  }
}

