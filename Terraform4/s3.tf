resource "aws_s3_bucket" "mys3"{
    bucket = "terraform-demobucketres"
}

resource "aws_s3_bucket_versioning" "version"{
    bucket = aws_s3_bucket.mys3.id
    versioning_configuration{
        status="Enabled"
    }
}
