// shared/backend.tf
terraform {
 backend "s3" {
   bucket         = "scott-terraform-scottenvironment"
   key            = "shared/terraform.tfstate"
   region         = "us-east-1"
   encrypt        = true
   dynamodb_table = "terraform-lock2"
 }
}