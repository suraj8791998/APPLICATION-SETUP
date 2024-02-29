output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "sg_id" {
  value = aws_security_group.jenkins.id
}