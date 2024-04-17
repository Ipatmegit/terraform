resource "aws_instance" "patrick_server" {
  count = 4 # create four similar EC2 instances

  ami           = "ami-080e1f13689e07408" # pass a valid AMI image
  instance_type = "t2.micro"

  tags = {
    Name = "Patrick Server ${count.index}"
  }
}
