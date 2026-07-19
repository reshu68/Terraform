provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "instance" {
    tags={
        Name="myInstance"
        client="reshma"
    }
    ami ="ami-01edba92f9036f76e"
    instance_type="t3.micro"
    key_name="march-kp"
}
