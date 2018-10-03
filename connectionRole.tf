provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::270473472622:role/terraform_role"
    session_name = "AWSTeraform"
    region       = "eu-west-1"
  }
}
