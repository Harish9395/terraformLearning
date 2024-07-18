terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
  required_version = ">=1.2.0"
}

provider "aws" {
    region = var.region
  
}

resource "aws_instance" "devserverngnix" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.Subnet
    security_groups = [var.securitygroup]
    key_name = "MyTestKey"
    user_data= <<-EOF
                #!/bin/bash
                sudo yum update -y
                sudo yum install -y nginx
                sudo service nginx start
                sudo chkconfig nginx onyesyes
                EOF  
    tags = {
        "key" = "NgnixInstance"
    }

}