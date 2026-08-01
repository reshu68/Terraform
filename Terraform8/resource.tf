resource "aws_s3_bucket" "mytfbuc"{
    bucket=each.value
    for_each=toset(local.bucket_names)
}

locals {
    bucket_names=["reshma123-0909","reshma234-08080","reshma345-07070"]
}

resource "aws_s3_bucket_versioning" "version"{
    
     for_each = aws_s3_bucket.mytfbuc

    bucket = each.value.id
    versioning_configuration{
        status="Enabled"
    }
    
}
