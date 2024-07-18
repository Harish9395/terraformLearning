variable "region" {
    type = string
    default = "us-east-2"
}

variable "AWS_ACCESS_KEY_ID" {
    type = string
    default = ""
}

variable "AWS_SECRET_ACCESS_KEY" {
    type = string
    default = ""
}


variable "ami" {
    type = string
    default = "ami-08be1e3e6c338b037"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "Subnet" {
    type = string
    default = "subnet-04d2cf14530c8dcdc"
}

variable "securitygroup" {
    type = string
    default = "sg-0b7d80bd276c3ce26"
}
