resource "aws_launch_template" "mylt" {
  tags = {
    Name = "reshma"
  }
  image_id               = "ami-02b64aa047cb5edf5"
  key_name               = "march-kp"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.mysec.id]
  user_data = base64encode(<<-EOF
#!/bin/bash
dnf install -y httpd
systemctl enable httpd
systemctl start httpd
echo "Hello from ASG" > /var/www/html/index.html
EOF

  )


}
