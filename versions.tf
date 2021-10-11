terraform {
  required_version = ">= 1.0.8"
  required_providers {
    dnsimple = {
      source  = "dnsimple/dnsimple"
      version = ">= 0.9"
    }
  }
}

