// Elastic IP Creation
resource "aws_eip" "ip-test-env" {
  instance = "${aws_instance.JuiceShop.id}"
  vpc      = true
}

