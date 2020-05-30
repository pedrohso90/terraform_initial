resource "aws_key_pair" "terraform_initials" {
  key_name   = "terraform-initials"
  public_key = file("$HOME/.ssh/id_rsa.pub")
  tags       = var.tags
}
