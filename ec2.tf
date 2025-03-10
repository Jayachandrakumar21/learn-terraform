# Created by: Jayachandra_kumar Date:28-01-2025
# Topic: Terraform ec2 instance creation 
# resource "aws_instance" "this" {
#   ami                     = "ami-09c813fb71547fc4f"
#   instance_type           = "t2.micro"
  
# }

resource "aws_security_group" "allow_tls" {
    name = "allow_tls"
    description = "Allow TLS inbount traffic and outbound traffic"

    tags = {
        name = "allow_tls"
    }
}
