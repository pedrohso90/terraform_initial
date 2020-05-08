terraform {
  backend "s3" {
    bucket         = "bucket-menino-do-rappi"
    key            = "state_vpc/terraform.tfstate"
    region         = "us-east-1"
    profile        = "pedro-pessoal"
  }
}