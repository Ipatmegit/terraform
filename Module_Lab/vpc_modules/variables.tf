
variable "cidr_block" {

  type = string

  description = "CIDR block for VPC"

  default = "10.0.0.0/16"

}

variable "vpc_name" {

  type = string

  description = "VPC Name"

}
variable "subnets" {

  type = any

}

variable "region" {

  type = string

  default = "us-east-1"

}

variable "availability_zone" {

  type = map(string)

  default = {
    private_subnet_az = "us-east-1b"
    public_subnet_az  = "us-east-1a"
  }

}

variable "ami_image" {

  type = string

}

variable "instance_type" {

  type = string

  default = "t2.micro"

}

variable "vm_name" {

  type = string

  default = "Patrick VM"
  
}

variable "inbound_rule" {

  type = any

}

