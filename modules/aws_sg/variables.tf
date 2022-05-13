variable "vpc_id" {
    type = string
    #default = "aws_vpc.my_vpc.id"
  
}

variable "sg_name" {
    type = map(any)
    default = {
      "Name" = "allow_tls"
    }
  
}