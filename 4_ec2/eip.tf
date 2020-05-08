resource "aws_eip" "menino_do_rappi" {
  vpc        = true
  tags       = var.tags
  instance   = aws_instance.menino_do_rappi.id
}