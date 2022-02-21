## Using a single workspace:
#terraform {
#  backend "remote" {
#    hostname = "app.terraform.io"
#    organization = "danilolabs"
#
#    workspaces {
#      name = "aws-danilolabs"
#    }
#  }
#}