resource "aws_instance" "scond" {
    tags={
        Name=var.name 
    }
    ami= var.ami
    instance_type=var.itype
    key_name=var.key 
    availability_zone=var.az
    root_block_device{
        volume_size=var.volume
    }

}
