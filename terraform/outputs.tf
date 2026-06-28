output "app_server_public_ip" {
  description = "Public IP address of the Terraform App Server"
  value       = aws_instance.app_server.public_ip
}

output "app_server_instance_id" {
  description = "Instance ID of the Terraform App Server"
  value       = aws_instance.app_server.id
}

output "availability_zone" {
  value = aws_instance.app_server.availability_zone
}
