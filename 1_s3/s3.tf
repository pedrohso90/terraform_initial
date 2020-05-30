resource "aws_s3_bucket" "aws-s3-bucket-terraform-initials" {
  bucket        = "bucket-terraform-initials"
  force_destroy = true
  tags          = var.tags
}
