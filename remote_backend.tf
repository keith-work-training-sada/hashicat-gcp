terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sada-partner-training-20230705"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
