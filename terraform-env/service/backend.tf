terraform {
 backend "s3" {
   bucket         = "scott-terraform-scottenvironment"
   key            = "service/terraform.tfstate"
   region         = "us-east-1"
   encrypt        = true
   dynamodb_table = "terraform-lock2"
 }
}