# Terraform for Fastmail & DNSimple

Quickly set up DNS entries for Fastmail with DNSimple in a Terraform project. It creates:

* SPF records to safelist Fastmail for the given domain (example.com)
* SPF records to safelist Fastmail for a wildcard subdomain (*.example.com)
* DKIM records to validate delivery from Fastmail for the given domain (example.com)

## Usage

Specify which domain to set up the DNS entries for with the `apex` variable.

```hcl
module "fastmail-example.com" {
  source = "github.com/pbyrne/terraform-fastmail-dnsimple"
  apex   = "example.com"
}
```

See `vars.tf` for the full list of available variables and their default values. These shouldn't need to be changed, but if you need different SPF settings (to safelist other providers for example, or other tweaks) `apex-spf` and `wildcard-spf` are where to look.
