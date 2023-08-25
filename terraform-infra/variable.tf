
variable "project_name" {
  description = "Project name to use in resource names"
  type = string
  default     = "django-aws"
}

variable "region" {
  description = "AWS region to create resources in"
  default = "eu-north-1"
}