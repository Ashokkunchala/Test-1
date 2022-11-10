resource "aws_instance" "ec2-example" {
  
  ami             = "ami-0e6329e222e662a52"
  instance_type   = "t2.micro"
  count = var.instance_count
  
  tags = {
           Name = "Jenkins_Terra_Ec2"
  }
}

variable "instance_count" {
  description = "Ec2 instance count"
  type = number
  default = 1
}
