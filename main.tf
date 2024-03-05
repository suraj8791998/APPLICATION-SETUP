resource "aws_security_group" "jenkins" {

 name        = "jenkins"

 description = "Jenkins server"

 vpc_id      = data.aws_vpc.default.id

 dynamic "ingress" {
   for_each = var.ingress
   content {
     description = ingress.value.description

   from_port   = ingress.value.from_port

   to_port     = ingress.value.to_port

   protocol    = ingress.value.protocol

   cidr_blocks = ingress.value.cidr_blocks

   }
 }

egress {

   from_port   = 0

   to_port     = 0

   protocol    = "-1"

   cidr_blocks = ["0.0.0.0/0"]

 }

}

resource "aws_instance" "jenkins_server" {
  for_each = var.instance
  ami           = data.aws_ami.ami_id.id
  instance_type = each.key == "Jenkins" ? "t3.medium" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.jenkins.id]
  user_data = each.key == "Jenkins" ? file("jenkins.sh") : null

  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${each.key}"
    }
  )
}

