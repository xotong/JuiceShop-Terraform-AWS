// Creates the Security Group that will be associated to the instance. - SSH is set up on port 22.
resource "aws_security_group" "juiceshop_SG" {
  name        = "juiceshop_SG"
  description = "Allow specified inbound traffic"
  vpc_id = "${aws_vpc.test-env.id}"

  // HTTP on Port 80  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // SSH on Port 22
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  // HTTPS on Port 443
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  // Allow all outbound connections
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
} 

