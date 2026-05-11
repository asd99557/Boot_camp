# variable "aws_region" {
#     description = "AWS region to deploy resources"
#     type        = string
#     default     = "ap-south-1"
  
# }

variable "aws_tag" {
    description = "Tags to be applied to AWS resources"
    type        = map(string)
    default     = {
        Name       = "Gopal-07-priv-subnet"
        Owner      = "gopal.dhapa@einfochips.com"
        DM         = "jignesh.vala@einfochips.com"
        Department = "PES-IA"
        Project    = "Boot_camp"
        EndDate    = "2026-05-28"
    }
}

variable "aws_az" {
    description = "AWS availability zone to deploy resources"
    type        = string
    default     = "ap-south-1a"
  
}

variable "aws_cidr_public" {   
    description = "CIDR block for the VPC"
    type        = string
    default     = "10.0.17.0/24"
  
}

variable "aws_cidr_private" {   
    description = "CIDR block for the VPC"
    type        = string
    default     = "10.0.117.0/24"
  
}