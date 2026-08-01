resource "aws_internet_gateway" "myigw"{
    tags={
        Name="myigw"
    }
    vpc_id=aws_vpc.myvpc.id
}
