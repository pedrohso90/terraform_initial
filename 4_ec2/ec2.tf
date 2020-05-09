resource "aws_instance" "menino_do_rappi" {
  ami                     = "ami-0ff8a91507f77f867"
  instance_type           = "t2.micro"
  subnet_id               = "subnet-0e4dfdc19c9f2a75f"
  vpc_security_group_ids  = ["sg-082bf89dafd332f3f"]
  key_name                = aws_key_pair.menino_do_rappi.key_name
  user_data               = file("./nginx.sh")
  tags                    = var.tags
}
