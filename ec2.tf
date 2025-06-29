<<<<<<< HEAD
resource "aws_instance" "this" {
  ami                     = "ami-09c813fb71547fc4f"
  instance_type           = "t2.micro"
=======
# Created by: Jayachandra_kumar Date:28-01-2025
# Topic: Terraform ec2 instance creation 
# resource "aws_instance" "this" {
#   ami                     = "ami-09c813fb71547fc4f"
#   instance_type           = "t2.micro"
>>>>>>> e1e3d3b3aa36f7063a1c28b05c89e00d197ac37c
  
}

resource "aws_security_group" "allow_tls" {
    name = "allow_tls"
    description = "Allow TLS inbount traffic and outbound traffic"

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

     egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags = {
        name = "allow_tls"
    }
}
