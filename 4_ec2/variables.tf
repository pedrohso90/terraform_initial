variable "region" {
  default     = "us-east-1"
}

variable "tags" {
  default = {
    Name        = "terraform-initials"
    Version     = "v1"
    Environment = "dev"
  }
}
