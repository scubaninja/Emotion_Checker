provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  version         = "1.22"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

provider "random" {
  version = "~> 1.3"
}

provider "acme" {
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
  version = "~>1.1.1"
}

provider "dnsimple" {
  token = "${var.dnsimple_auth_token}"
  account = "${var.dnsimple_account}"
}