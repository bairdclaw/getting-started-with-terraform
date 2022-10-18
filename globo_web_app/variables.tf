variable "aws_access_key" {
    type = string
    description = "AWS Access Key"
    sensitive = true
}
variable "aws_secret_key" {
    type = string
    description = "AWS Secret Key"
    sensitive = true
}
variable "aws_region" {
    type = string
    description = "AWS Region to use for resources"
    default = "us-east-1"
}
#######
# Add variables assignment
#######
variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames in VPC"
  default     = true
}
variable "aws_ami" {
    type = string
    description = "AMI Path"
    default = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}
variable "vpc_cidr_block" {
    type = string
    description = "CIDR Block IP Address"
    default = "10.0.0.0/16"
    sensitive = true
}
variable "subnets_cidr_block" {
    type = list(string)
    description = "CIDR Block for submets in VPC"
    default = ["10.0.0.0/24", "10.0.1.0/24"]
    sensitive = true
}
variable "map_public_ip_on_launch" {
  type        = bool
  description = "Map a public IP address for Subnet instances"
  default     = true
}
variable "rtb_cidr_block" {
    type = string
    description = "Route Table CIDR Block"
    default = "0.0.0.0/0"
    sensitive = true
}
variable "aws_instance_type" {
    type = map
    description = "Small Medium or Large instance type"
   default =  {
    small = "t2.micro"
    medium = "t2.small"
    large = "t2.large"
    }
}
variable "company" {
  type        = string
  description = "Company name for resource tagging"
  default     = "Globomantics"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
}


