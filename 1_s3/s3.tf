resource "aws_s3_bucket" "aws-s3-bucket-menino-do-rappi" {
  bucket        = "bucket-menino-do-rappi"
  force_destroy = true
  tags          = var.tags
}
