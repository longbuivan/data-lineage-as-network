terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region = "eu-west-2"

}

data "aws_region" "current" {}
data "aws_caller_identity" "current" {}
data "aws_availability_zones" "available" {}

output "aws_region" {
  value = data.aws_region.current.id == "eu-west-2"
}
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}
output "aws_availability_zones" {
  value = data.aws_availability_zones.available.id == "eu-west-2a"
}
locals {
  post_fix               = "${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}"
  spline_agent_file_path = "asset/lib/spark-3.1-spline-agent-bundle_2.12-0.6.1.jar"
}

output "api_url" {
  value = aws_apigatewayv2_stage.data_lineage.invoke_url
}

output "neptune_endpoint" {
  value = aws_neptune_cluster.default.endpoint
}
