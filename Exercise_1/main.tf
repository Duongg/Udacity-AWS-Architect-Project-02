# TODO: Designate a cloud provider, region, and credentials


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "AKIAYDUZ6N4LIR4J2XGV"
  secret_key = "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"
  region     = "us-east-1"
}
# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2

resource "aws_instance" "udacity_t2" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = "t2.micro"
  count         = "4"
  tags = {
    Name = "Udacity T2"
    name = "Udacity T2"
  }
  subnet_id = "subnet-0c7b81fcfdb784e40"
}
# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity_m4" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = "m4.large"
  count         = "0"
  tags = {
    Name = "Udacity M4"
    name = "Udacity M4"
  }
  subnet_id = "subnet-0c7b81fcfdb784e40"
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
