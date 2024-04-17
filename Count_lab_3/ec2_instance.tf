
 resource "aws_instance" "patrick_server" {
  ami = "ami-080e1f13689e07408"

  instance_type = "t2.micro"

  tags = {
    "Name" = each.value
    "env"  = "dev"
  }

  for_each = var.ec2_name


 }