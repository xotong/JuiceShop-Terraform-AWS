// Username that is used for the AMI
variable "username" {
   default = "ec2-user"
}

// Username that is used for the AMI
variable "AMI_ID" {
   default = "ami-08db74f389216e7e0"
}

// Instance Size
variable "Instance_Size" {
   default = "t2.micro"
}
