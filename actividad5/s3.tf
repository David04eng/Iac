resource "random_id" " bucket_suffix"{
    byte_length=  7

}

resource "aws_s3_bucket" "ismaedavid_bucket"{
    bucket = "ismaeldavid-bucket-${random_id.bucket_suffix.hex} "

}
output "bucket_name"{
    value = aws_s3_bucket.ismaedavid_bucket.bucket
}