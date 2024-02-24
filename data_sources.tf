#data "vpc_id" "akshaivpc2" {
#  id = "vpc-0a85c4d7390f019cd"
#}
#
#data "aws_subnets" "subnetakshai-1" {
#  id = "subnet-00bce0cb13d1beb5d"
#}
#data "aws_security_group" "secuirty-groupakshai" {
#  id = "sg-02ffaf6ccc3724136"
#}
#resource "aws_instance" "akshai-web-1" {
#  ami                         = var.imagename
#  availability_zone           = "us-east-1a"
#  instance_type               = "t2.micro"
#  key_name                    = var.key_name
#  subnet_id                   = data.aws_subnet.subnetakshai-1.id
#  vpc_security_group_ids      = ["${data.aws_security_group.secuirty-groupakshai.id}"]
#  associate_public_ip_address = true
#
#  tags = {
#    Name  = "Preprodweb-3"
#    Env   = "PreProd"
#    Owner = "Akshai-testing"
#  }
#
#}