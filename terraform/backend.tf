terraform {
  backend "s3" {
    bucket         = "moyeed-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-lock"
  }
}
