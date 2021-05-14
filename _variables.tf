variable "subscription_pci" {
  type        = bool
  default     = false
  description = "Enables PCI-DSS Standards subscription"
}

variable "subscription_cis" {
  type        = bool
  default     = false
  description = "Enables CIS Foundations Benchmark Standards subscription"
}

variable "subscription_foundational" {
  type        = bool
  default     = false
  description = "Enables AWS Foundational Security Best Practices subscription"
}

variable "severity_list" {
  type    = list(string)
  default = ["HIGH","CRITICAL"]
}

variable "admin_account_id" {
  type        = string
  description = "Admin account to delegate to"
}

variable "alarm_email" {
  type        = string
  default     = ""
  description = "Enables email notification (optional)"
}
variable "alarm_slack_endpoint" {
  type        = string
  default     = ""
  description = "Enables slack notification to endpoint passed (optional)"
}