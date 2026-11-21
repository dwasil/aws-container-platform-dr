variable "primary_region" {
  description = "Primary AWS region for development and main deployment"
  type        = string
  default     = "us-east-1"

  validation {
    condition     = contains(["us-east-1", "us-west-2"], var.primary_region)
    error_message = "Only approved program regions are allowed: us-east-1 or us-west-2."
  }
}

variable "dr_region" {
  description = "Secondary AWS region for disaster recovery"
  type        = string
  default     = "us-west-2"

  validation {
    condition     = contains(["us-east-1", "us-west-2"], var.dr_region)
    error_message = "DR region must be selected from the approved list: us-east-1 or us-west-2."
  }
}

variable "project_name" {
  description = "Base project name used for resource prefixes and tags"
  type        = string
  default     = "aws-container-platform-dr"
}

variable "environment" {
  description = "Deployment environment (dev, stage, prod)"
  type        = string
  default     = "dev"
}