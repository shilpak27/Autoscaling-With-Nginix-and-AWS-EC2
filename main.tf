provider "aws" {
  region = "ap-south-1"  # Change as per your region
}

# Reference the existing key pair by name (ensure the key pair exists in AWS)
# No need to create a new key pair with Terraform if it already exists in AWS
# Just refer to the existing key pair.

# First EC2 instance
resource "aws_instance" "web_server_1" {
  ami           = "ami-03c68e52484d7488f" # Replace with correct AMI ID
  instance_type = "t2.micro"              # Change instance type if needed
  key_name      = "squid_server"      # Use your existing key name here

  tags = {
    Name = "web-Instance-1"
  }
}

# Second EC2 instance
resource "aws_instance" "web_server_2" {
  ami           = "ami-03c68e52484d7488f" # Replace with correct AMI ID
  instance_type = "t2.micro"              # Change instance type if needed
  key_name      = "squid_server"      # Use your existing key name here

  tags = {
    Name = "web-Instance-2"
  }
}
