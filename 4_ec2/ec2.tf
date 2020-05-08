resource "aws_instance" "menino_do_rappi" {
  ami                     = "ami-0ff8a91507f77f867"
  instance_type           = "t2.micro"
  subnet_id               = "subnet-06f0f3287ab04ec8c"
  vpc_security_group_ids  = ["sg-011889bf3f9f4c163"]
  key_name                = aws_key_pair.menino_do_rappi.key_name
  user_data               = file("./nginx.sh")
  tags                    = var.tags
}
