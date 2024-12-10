provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "devsecopsproject0" {
  bucket = "devsecopsproject0"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "devsecopsproject0"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}