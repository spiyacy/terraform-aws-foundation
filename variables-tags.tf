variable "default_tags" {
  type        = map(string)
  description = "Default tags to apply to AWS resources."
  default     = {}
}

variable "owner" {
  type        = string
  description = "The person or group who launched these resources."
}
