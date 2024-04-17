module "vpc1" {

  source = "../vpc_modules"
  region = "us-east-1"

  availability_zone = {
    private_subnet_az = "us-east-1b"
    public_subnet_az  = "us-east-1a"
  }

  #cidr_block = "10.0.0.0/16"

  vpc_name = "myvpcmodule-patrick"

  #public_subnet_cidr_block = "10.0.1.0/24"

  #private_subnet_cidr_block = "10.0.2.0/24"

  ami_image = "ami-07d9b9ddc6cd8dd30"

  instance_type = "t2.micro"

  subnets = {
    public_subnet = {

      cidr_block = "10.0.1.0/24"

      map_public_ip_on_launch = true

      availability_zone = "us-east-1b"

    }

    private_subnet = {

      cidr_block = "10.0.2.0/24"

      map_public_ip_on_launch = false

      availability_zone = "us-east-1a"
    }
  }

  inbound_rule = {
    allow_http_traffic = {

      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    allow_ssh_traffic = {


      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }

    allow_https_traffic = {

      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
  }
}
