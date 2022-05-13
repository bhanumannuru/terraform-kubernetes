variable "vpc_id" {
    type = string
    #default = "aws_vpc.my_vpc.id"
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