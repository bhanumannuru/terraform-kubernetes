#---------------------------------------AWS_INSTANCE-----------------------------------------------------
resource "aws_instance" "foo" {
  ami           = var.ami_name
  instance_type = var.instance_type
  availability_zone = var.instance_zone

 network_interface {
    network_interface_id = var.nic_id
    device_index         = 0
 }

  tags = var.instance_name
}