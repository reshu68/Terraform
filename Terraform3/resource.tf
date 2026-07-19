resource "aws_instance" "thirdInst"{
    for_each=var.reshma
    ami=each.value.ami
    key_name=each.value.ikey
    instance_type=each.value.itype
    tags={
        Name=each.value.iname
    }
}
