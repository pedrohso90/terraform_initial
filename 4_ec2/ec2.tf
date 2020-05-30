resource "aws_instance" "terraform_initials" {
  ami                     = "ami-0ff8a91507f77f867"
  instance_type           = "t2.micro"
  subnet_id               = ""
  vpc_security_group_ids  = [""]
  key_name                = aws_key_pair.terraform_initials.key_name
  user_data               = file("./nginx.sh")
  tags                    = var.tags
}
