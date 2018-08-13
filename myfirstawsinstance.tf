variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}

variable "key_name" {
  default = "test"
}

##providers
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

##resources
resource "aws_instance" "apache" {
  ami           = "ami-6871a115"
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"
}
