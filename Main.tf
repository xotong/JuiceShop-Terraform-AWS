provider "aws" {
  access_key = "${var.Acccess_Key}"
  secret_key = "${var.Secret_Key}"
  region     = "${var.Region}"
}

// Creates the instance
resource "aws_instance" "JuiceShop" {
  ami           = "${var.AMI_ID}"
  instance_type = "${var.Instance_Size}"
  security_groups = [
    "${aws_security_group.juiceshop_SG.id}"
  ]
  monitoring = "true"
  depends_on = [aws_security_group.juiceshop_SG]
  subnet_id = "${aws_subnet.subnet-uno.id}"
  associate_public_ip_address = true
  user_data = <<-EOF
                    #!/bin/bash
                    yum update -y
                    yum install -y docker
                    service docker start
                    docker pull bkimminich/juice-shop
                    docker run -d -p 80:3000 bkimminich/juice-shop
                  EOF
}

