output "public_ip" {
  value = aws_instance.apache_server.public_ip
}

output "public_dns" {
  value = aws_instance.apache_server.public_dns
}
