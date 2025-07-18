# Data source para infraestrutura da Fase 1
data "terraform_remote_state" "analysis_infra" {
  backend = "s3"
  config = {
    bucket = "example-aws-terraform-terraform-state"
    key    = "example-aws-property-analysis-infra/terraform.tfstate"
    region = "us-east-1"
  }
}

# Data source para network (se necessário)
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "example-aws-terraform-terraform-state"
    key    = "example-aws-network/terraform.tfstate"
    region = "us-east-1"
  }
}