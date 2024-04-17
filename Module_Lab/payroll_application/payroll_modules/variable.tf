variable "ami_image" {

  type = string

  description = "This is a variable used in ami image "

  default = "ami-080e1f13689e07408"

}

variable "instance_type" {

  type = string

  description = "this is a value for instance type"

}

variable "vm_name" {

  type = string

  default = "patrick_vm"


}

variable "aws_region" {
    type = string
}

variable "aws_s3_bucket_name" { 
    type = string
}

variable "vpc_name" {

  type = string

  description = "VPC Name"

}

variable "private_subnet_cidr_block" {

  type = string

  default = "10.2.0.0/24"

}