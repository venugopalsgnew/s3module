provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region     = "ap-south-1"
}

module "s3bucket" {
   source       = "../modules/s3/"
   bucket_name  = "nonproddev03dec"
}

terraform {
  backend "remote" {
    organization = "Test123456_24Nov"

    workspaces {
      name = "DEMO-CLI"
    }
  }
}

