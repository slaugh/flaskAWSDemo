// service/remote-shared.tf
data "terraform_remote_state" "shared" {
 backend = "s3"

 config {
   bucket = "scott-terraform-scottenvironment"
   key    = "shared/terraform.tfstate"
   region = "us-east-1"
 }
}