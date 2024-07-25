
terraform {
  cloud {
    organization = "sfurlani"

    workspaces {
      name = "codespaces-express"
    }
  }
}
