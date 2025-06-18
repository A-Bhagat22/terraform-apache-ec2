provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "apache_server" {
  ami           = "ami-09e6f87a47903347c" # Amazon Linux 2 (check latest)
  instance_type = "t2.micro"
  key_name      = "realme"  

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd -y
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Deployed using Terraform</h1>" > /var/www/html/index.html
            EOF

  tags = {
    Name = "Terraform-Apache-Instance"
  }
}
