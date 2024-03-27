terraform {
  backend "s3" {
    bucket         = "deyan-bucket-123"
    key            = "test/deyan-statefile-123/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "deyan-table-123"
    encrypt        = true
  }
}

