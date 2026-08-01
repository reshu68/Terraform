resource "aws_instance" "myiinst"{
    tags={
        Name="myInst"
    }
    ami="ami-01edba92f9036f76e"
    instance_type="t3.micro"
    key_name="march-kp"
    vpc_security_group_ids=[aws_security_group.mysg1.id]

    provisioner "local-exec" {
        command="echo my local exec"
    }
    connection{
            type="ssh"
            user="ec2-user"
            private_key=file("march-kp.pem")
            host=self.public_ip
        }
    provisioner "remote-exec"{
        
        inline=[
            "sudo yum update -y",
            "sudo yum install httpd -y",
            "sudo systemctl start httpd",
            "sudo systemctl enable httpd",
        ]
    }


    provisioner "file"{
        source="../Terraform5/provider.tf"
        destination="/tmp/myname.tf"
    }
}
