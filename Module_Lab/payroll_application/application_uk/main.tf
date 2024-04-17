module "aws_ec2_uk" {

  source = "../payroll_modules"
  aws_region = "us-east-2"

  vpc_name = "myvpcuk-patrick"

  private_subnet_cidr_block = "10.0.2.0/24"

  ami_image = "ami-0b8b44ec9a8f90422"

  instance_type = "t2.micro"

  vm_name = "myvmuk-patrick"

  aws_s3_bucket_name = "mypatbucket4"


}
