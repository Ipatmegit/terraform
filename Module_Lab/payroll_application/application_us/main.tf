module "aws_ec2_us" {

  source     = "../payroll_modules"
  aws_region = "us-east-1"

  vpc_name = "myvpcus-patrick"

  private_subnet_cidr_block = "10.0.2.0/24"

  ami_image = "ami-07d9b9ddc6cd8dd30"

  instance_type = "t2.micro"

  vm_name = "myvmus-patrick"

  aws_s3_bucket_name = "mypatbucket2"


}
