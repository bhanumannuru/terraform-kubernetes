variable "subnet_id" {
    type = string
    default = "aws_subnet.my_subnet.id"
  
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