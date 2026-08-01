resource "aws_instance" "web1"{
    tags={
        Name="instance2"
    }
    ami="ami-01edba92f9036f76e"
    instance_type="t3.micro"
    key_name="march-kp"
    lifecycle{
        create_before_destroy=true
        prevent_destroy=true
        ignore_changes=[tags]
    }
    root_block_device{
        volume_size=10
    }

}


resource "aws_instance" "web2"{
    tags={
        Name="instance2"
    }
    ami="ami-04ea4e8270c27626c"
    instance_type="t3.micro"
    key_name="iamkey"
    provider=aws.second

}
