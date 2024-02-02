// Outputs the Host name that can be used in Putty for a SSH connection
output "HostIP" {
  value = "http://${aws_eip.ip-test-env.public_ip}"
}  
