resource "aws_instance" "patrick_server" {
  count = length(var.ec2_name) 

  ami           = "ami-080e1f13689e07408" # pass a valid AMI image
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2_name[count.index]
  }
}
