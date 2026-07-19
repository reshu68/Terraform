resource "aws_instance" "myinst"{
    tags={
        Name="FourthInst"
    }
    ami="ami-01edba92f9036f76e"
    key_name="march-kp"
    availability_zone="us-east-1a"
    root_block_device{
        volume_size=10
    }
    instance_type="t3.micro"
    vpc_security_group_ids=["sg-0716be575f956a680"]

}
