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

variable "nic_id" {
    type = string
  
}