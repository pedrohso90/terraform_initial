terraform {
  backend "s3" {
    bucket         = "bucket-terraform-initials"
    key            = "state_vpc/terraform.tfstate"
    region         = "us-east-1"
    profile        = ""
  }
}