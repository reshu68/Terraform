resource "aws_route_table_association" "ass1"{
    route_table_id=aws_route_table.myrt.id
    subnet_id=aws_subnet.mysubnet.id
}

resource "aws_route_table_association" "ass2"{
    route_table_id=aws_route_table.myrt.id
    subnet_id=aws_subnet.mysubnet2.id
}
