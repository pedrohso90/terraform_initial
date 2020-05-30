resource "aws_eip" "terraform_initials" {
  vpc        = true
  tags       = var.tags
  instance   = aws_instance.terraform_initials.id
}
