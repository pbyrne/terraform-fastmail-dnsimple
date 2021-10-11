resource "dnsimple_zone_record" "apex-primary" {
  zone_name = var.apex
  name      = ""
  value     = var.primary
  priority  = "10"
  type      = "MX"
}

resource "dnsimple_zone_record" "apex-secondary" {
  zone_name = var.apex
  name      = ""
  value     = var.secondary
  priority  = "20"
  type      = "MX"
}

resource "dnsimple_zone_record" "apex-spf" {
  zone_name = var.apex
  name      = ""
  value     = var.spf
  type      = "TXT"
}

resource "dnsimple_zone_record" "wildcard-primary" {
  zone_name = var.apex
  name      = "*"
  value     = var.primary
  priority  = "10"
  type      = "MX"
}

resource "dnsimple_zone_record" "wildcard-secondary" {
  zone_name = var.apex
  name      = "*"
  value     = var.secondary
  priority  = "20"
  type      = "MX"
}

resource "dnsimple_zone_record" "wildcard-spf" {
  zone_name = var.apex
  name      = "*"
  value     = var.spf
  type      = "TXT"
}

resource "dnsimple_zone_record" "dkim-1" {
  zone_name = var.apex
  name      = "fm1._domainkey"
  value     = "fm1.${var.apex}.dkim.fmhosted.com"
  type      = "CNAME"
}

resource "dnsimple_zone_record" "dkim-2" {
  zone_name = var.apex
  name      = "fm2._domainkey"
  value     = "fm2.${var.apex}.dkim.fmhosted.com"
  type      = "CNAME"
}

resource "dnsimple_zone_record" "dkim-3" {
  zone_name = var.apex
  name      = "fm3._domainkey"
  value     = "fm3.${var.apex}.dkim.fmhosted.com"
  type      = "CNAME"
}
