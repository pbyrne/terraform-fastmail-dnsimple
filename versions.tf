terraform {
  required_version = ">= 1.7"
  required_providers {
    dnsimple = {
      source  = "dnsimple/dnsimple"
      version = ">= 1.5"
    }
  }
}

