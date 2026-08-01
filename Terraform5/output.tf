output "myoutput"{
    value=[aws_instance.web1.instance_type,aws_instance.web1.private_ip]
}
