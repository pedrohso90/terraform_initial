output "ip" {
  value = aws_instance.terraform_initials.private_ip
}

output "eip" {
  value = aws_eip.terraform_initials.public_ip
}
