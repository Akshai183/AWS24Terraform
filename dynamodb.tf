# *"This is used to apply locking mechanism in AWS using DynamoDB"*
#resource "aws_dynamodb_table" "terraform_locking" {
#  name         = "akshaiterraformlocks"
#  billing_mode = "PAY_PER_REQUEST"
#  hash_key     = "LockID"
#  attribute {
#    name = "LockID"
#    type = "S"
#  }
#}