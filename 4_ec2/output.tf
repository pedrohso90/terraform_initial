output "ip" {
  value = aws_instance.menino_do_rappi.private_ip
}

output "eip" {
  value = aws_eip.menino_do_rappi.public_ip
}
