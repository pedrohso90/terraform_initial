terraform {
  backend "s3" {
    bucket         = "bucket-terraform-initials"
    key            = "state_sg/terraform.tfstate"
    region         = "us-east-1"
    profile        = ""
  }
}