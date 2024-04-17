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

variable "cidr_block" {

  
}