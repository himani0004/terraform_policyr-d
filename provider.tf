terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.27.3"
    }
  }
}

provider "newrelic" {
  account_id = 4043746

  api_key    = "NRAK-NSDYK50NWS7YZB8JL63P153NDLS"
  region     = "US"
}