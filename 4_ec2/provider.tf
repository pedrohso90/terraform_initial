provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = ""
  region                  = var.region
}
