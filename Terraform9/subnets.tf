resource "aws_subnet" "mysubnet"{
    vpc_id=aws_vpc.myvpc.id
    tags={
        Name="subnet1"

    }
    availability_zone="us-east-2a"
    cidr_block="10.0.0.0/24"
    map_public_ip_on_launch=true
}


resource "aws_subnet" "mysubnet2"{
    vpc_id=aws_vpc.myvpc.id
    tags={
        Name="subnet2"

    }
    availability_zone="us-east-2b"
    cidr_block="10.0.1.0/24"
    map_public_ip_on_launch=true
}
