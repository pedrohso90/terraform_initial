resource "aws_key_pair" "menino_do_rappi" {
  key_name   = "menino-do-rappi"
  public_key = file("/home/tqi_phsoliveira/.ssh/id_rsa.pub")
  tags       = var.tags
}
