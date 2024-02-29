output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "sg_id" {
  value = aws_security_group.jenkins.id
}

output "public_ip" {
  value = aws_instance.ec2_creation.public_ip
}