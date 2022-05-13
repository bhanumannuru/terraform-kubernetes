region = "ap-south-1"
vpc_cidr = "172.18.0.0/16"

vpc_tag = {
  "Name" = "tf-example"
}

subnet_cidr = "172.18.10.0/24"

subnet_name = {
  "Name" = "my_subnet"
}

subnet_zone = "ap-south-1b"

sg_name = {
  "Name" = "allow_tls"          
}


instance_config = {

    instance_1 = {

      nic_name      = { "Name" = "dev_nic1" }
     private_ips    = ["172.18.10.100"]
     instance_name  = { "Name" = "dev-server1" }
     ami_name       =  "ami-0667149a69bc2c367"
     instance_type = "t2.micro"
     instance_zone = "ap-south-1b"

    }

    instance_2 = {

      nic_name      = { "Name" = "dev_nic2" }
     private_ips    = ["172.18.10.101"]
     instance_name  = { "Name" = "dev-server2" }
     ami_name       =  "ami-0667149a69bc2c367"
     instance_type = "t2.medium"
     instance_zone = "ap-south-1b"

    }

}