# datasource that reads the info from vpc statefile 
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "terraformbasicdevopsstatebucket"
    key    = "dev/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

#secret manager extraction

# data "aws_secretsmanager_secret" "secrets" {
#   name = "robot/secrets"
# }



# #To retrive the secret maanger version with secret
# data "aws_secretsmanager_secret_version" "secret_version" {
#   secret_id = data.aws_secretsmanager_secret.secrets.id
# }