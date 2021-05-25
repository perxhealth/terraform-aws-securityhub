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

variable "member_accounts" {
  type        = list(object({account_id: string, email: string}))
  description = "The accounts to add as members"
  default     = []
}

variable "invite_member" {
  type        = bool
  description = "Invite member accounts"
  default     = false
}