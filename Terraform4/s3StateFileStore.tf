terraform {
    backend "s3" {
        bucket="terraform-demobucketres"
        key="reshma/terraform.tfstate"
        region="us-east-1"
        use_lockfile=true
    }


}
