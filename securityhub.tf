
resource "aws_securityhub_account" "default" {}

resource "aws_securityhub_standards_subscription" "pci" {
  count         = var.subscription_pci ? 1 : 0
  depends_on    = [aws_securityhub_account.default]
  standards_arn = "arn:aws:securityhub:${data.aws_region.current.name}::standards/pci-dss/v/3.2.1"
}

resource "aws_securityhub_standards_subscription" "cis" {
  count         = var.subscription_cis ? 1 : 0
  depends_on    = [aws_securityhub_account.default]
  standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
}

resource "aws_securityhub_standards_subscription" "foundational" {
  count         = var.subscription_foundational ? 1 : 0
  depends_on    = [aws_securityhub_account.default]
  standards_arn = "arn:aws:securityhub:${data.aws_region.current.name}::standards/aws-foundational-security-best-practices/v/1.0.0"
}

resource "aws_securityhub_organization_admin_account" "admin" {
  count            = var.admin_account_id != nil ? 1 : 0
  admin_account_id = var.admin_account_id
}