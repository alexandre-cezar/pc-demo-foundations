#Define the variables used by the main terraform file
#owner: Alexandre Cezar

variable "region" {
  type    = string
  default = "us-east-2"
}

variable "vpc" {
  description = "The VPC object with name, description, and CIDR block"
  type = map(object({
    name        = string
    description = string
    cidr_block  = string
  }))
  default = {
    demo_foundations_vpc = {
      name        = "demo-foundations-vpc"
      description = "VPC for the foundations demo"
      cidr_block  = "172.20.0.0/20"
    }
  }
}

variable "public_subnet" {
  type = object({
    name = string
    cidr_block = string
  })
  default = {
    name = "public-subnet"
    cidr_block = "172.20.1.0/24"
  }
}

variable "internal_subnet" {
  type = object({
    name = string
    cidr_block = string
  })
  default = {
    name = "internal-subnet"
    cidr_block = "172.20.2.0/24"
  }
}

variable "vulnerable_ami" {
  type    = string
  default = "ami-0c94855ba95c71c99" # Amazon Linux 2 LTS
}

variable "vulnerable_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "bastion_ami" {
  type    = string
  default = "ami-05f7491af5eef733a" # Amazon Linux 2 LTS
}

variable "bastion_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "internal_ami" {
  type    = string
  default = "ami-0c94855ba95c71c99" # Amazon Linux 2 LTS
}

variable "internal_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ssh_key" {
type    = string
default = "/path to your ssh key"
}