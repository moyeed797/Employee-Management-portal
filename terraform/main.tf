resource "aws_security_group" "app_sg" { # Create Security Group

  name = "terraform-app-sg"

  ingress { # Allow SSH
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress { # Allow HTTP
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress { # Allow all outbound traffic
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Terraform-App-SG-Updated"
  }
}

resource "aws_instance" "app_server" { # Create EC2 Instance

  ami           = var.ami_id        # Amazon Linux 2023
  instance_type = var.instance_type # EC2 Size
  key_name      = var.key_name      # Existing Key Pair

  vpc_security_group_ids = [aws_security_group.app_sg.id] # Attach Security Group

  tags = {
    Name = "Terraform-App-Server_testing S3"
  }
}
