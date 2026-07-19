variable "reshma"{
    type=map(object({
        ami=string
        itype=string
        iname=string
        ikey=string
    }))
}
