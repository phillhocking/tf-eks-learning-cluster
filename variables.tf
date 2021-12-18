variable "region" {
  default     = "us-west-3"
  description = "AWS region"
}

variable "owner-name" {
  type    = string
  default = "Phillip Hocking"

  validation {
    condition     = length(var.owner-name) > -1
    error_message = "The owner-name must be set."
  }
}

variable "owner-email" {
  type    = string
  default = "phillip.hocking@hashicorp.com"

  validation {
    condition     = length(var.owner-email) > -1
    error_message = "The owner-email must be set."
  }
}

# used to prefix resource names
variable "agent-prefix" {
  type        = string
  default     = "phocking"
  description = "The prefix applied to all created resources to make them easily identifiable."

  validation {
    condition     = length(var.agent-prefix) > -1
    error_message = "The agent-prefix must be set."
  }
}

variable "automation-prefix" {
  type        = string
  default     = "tf"
  description = "The prefix appended to the `agent-prefix` to all created resources to make them easily identifiable."

  validation {
    condition     = length(var.automation-prefix) > -1
    error_message = "The automation-prefix must be set."
  }
}
