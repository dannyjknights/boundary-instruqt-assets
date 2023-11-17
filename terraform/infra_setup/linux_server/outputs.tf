output "ip_private" {
  description = "The private IP of the Linux servers."
  value       = var.create_instance == true ? aws_instance.linux[0].private_ip : null
}