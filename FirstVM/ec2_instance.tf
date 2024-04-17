resource "aws_instance" "patrick_web_server" {

  ami = var.ami_image

  instance_type = var.instance_type

  tags = {
    "Name" = "myWebServer"

  }

}