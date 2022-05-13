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

      nic_name      = { "Name" = "jenkins" }
     private_ips    = ["172.18.10.100"]
     instance_name  = { "Name" = "dev-jenkins" }
     ami_name       =  "ami-0667149a69bc2c367"
     instance_type = "t2.micro"
     instance_zone = "ap-south-1b"

    }

    instance_2 = {

      nic_name      = { "Name" = "dev_sonarqube" }
     private_ips    = ["172.18.10.101"]
     instance_name  = { "Name" = "dev-sonarqube" }
     ami_name       =  "ami-0667149a69bc2c367"
     instance_type = "t2.medium"
     instance_zone = "ap-south-1b"

    }
  
    instance_3 = {

      nic_name      = { "Name" = "dev_ansible" }
     private_ips    = ["172.18.10.101"]
     instance_name  = { "Name" = "dev-ansible" }
     ami_name       =  "ami-0667149a69bc2c367"
     instance_type = "t2.micro"
     instance_zone = "ap-south-1b"

    }
  
    instance_4 = {

      nic_name      = { "Name" = "dev_docker" }
     private_ips    = ["172.18.10.101"]
     instance_name  = { "Name" = "dev-docker" }
     ami_name       =  "ami-0667149a69bc2c367"
     instance_type = "t2.micro"
     instance_zone = "ap-south-1b"

    }
  
    instance_5 = {

      nic_name      = { "Name" = "dev_grafana" }
     private_ips    = ["172.18.10.101"]
     instance_name  = { "Name" = "dev-grafana" }
     ami_name       =  "ami-0667149a69bc2c367"
     instance_type = "t2.micro"
     instance_zone = "ap-south-1b"

    }

    instance_6 = {

      nic_name      = { "Name" = "dev_kubernetes" }
     private_ips    = ["172.18.10.101"]
     instance_name  = { "Name" = "dev-kubernets" }
     ami_name       =  "ami-0667149a69bc2c367"
     instance_type = "t2.medium"
     instance_zone = "ap-south-1b"

    }
}
