resource "aws_instance" "patrick_aws_ec2" {

  ami = var.ami_image

  instance_type = var.instance_type

 tags = {
    Name = var.vm_name
  }

  
}
  resource "aws_vpc" "myVpc" {
  cidr_block       = var.private_subnet_cidr_block
  instance_tenancy = "default"
  tags = {
    Name = var.vpc_name
  }
}
