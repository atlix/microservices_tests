terraform {
  backend "gcs" {
    bucket = "atlix-terraform-microservices-backend"
    prefix = "terraform/tfstate/stage"
  }
}
