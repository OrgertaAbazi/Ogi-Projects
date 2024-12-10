provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "ogiprojects" {
  bucket = "ogiprojects"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "ogiprojects"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}