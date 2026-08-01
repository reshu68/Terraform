resource "aws_route_table" "myrt"{
    tags={
        Name="myrt1"

    }

    vpc_id=aws_vpc.myvpc.id
    route{
        cidr_block="0.0.0.0/0"
        gateway_id=aws_internet_gateway.myigw.id
    }
}
