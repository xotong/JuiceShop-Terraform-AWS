// Route Table Creation
resource "aws_route_table" "route-table-test-env" {
  vpc_id = "${aws_vpc.test-env.id}"
  route {  
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.test-env-gw.id}"
  }
}

