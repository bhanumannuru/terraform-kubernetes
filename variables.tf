variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  type = string
  default = "172.16.0.0/16"
}

variable "vpc_tag" {
  type = map(any)
  default = {
    "Name" = "tf-example"
  }
  
}

variable "subnet_cidr" {
    type = string
    default = "172.16.10.0/24"
  
}

variable "subnet_name" {
    type = map(any)
    default = {
      "Name" = "my_subnet"
    }
  
}

variable "subnet_zone" {
    type = string
    default = "ap-south-1b"
  
}

variable "sg_name" {
    type = map(any)
    default = {
      "Name" = "allow_tls"
    }
  
}

variable "nic_name" {
    type = map(any)
     default = {
        "Name" = "primary_network_interface"
     }

}

variable "private_ips" {
    type = list(string)
    default = ["172.16.10.100"]
  
}

variable "instance_name" {
    type = map(any)
    default = {
      "Name" = "PROD-SERVER"
    }
  
}

variable "ami_name" {
    type = string
    default = "ami-0667149a69bc2c367"
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "instance_zone" {
    type = string
    default = "ap-south-1b"
  
}

variable "instance_config" {
  type = map(any)
  
}