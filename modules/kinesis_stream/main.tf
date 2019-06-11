//provider "aws" {
//  # default provider
//  version             = "~> 2.14"
//  region              = "${var.region}"
//  #region              = "eu-west-1"
//}

//# providers with aliases:
//provider "aws" {
//  alias       = "sydney"
//  region      = "ap-southeast-2"
//}
//
//provider "aws" {
//  alias       = "frankfurt"
//  region      = "eu-central-1"
//}
//
//provider "aws" {
//  alias       = "oregon"
//  region      = "us-west-2"
//}


//locals {
//  tags = {
//    SYSTEM        = "DaVinci"
//    OWNER         = "SolarWinds MSP Data Platform"
//    ENV_NAME      = "${var.environment}"
//    DESCRIPTION   = "Kinesis stream for project DaVinci KEA"
//    MANAGED_BY    = "Terraform"
//  }
//}
//
//resource "aws_kinesis_stream" "kinesis_stream" {
//  name                = "${var.stream_name}"
//  shard_count         = "${var.shard_count}"
//  retention_period    = "${var.retention_period}"
//
//  shard_level_metrics = [
//    #  A list of shard-level CloudWatch metrics which can be enabled for the stream.
//    "IncomingBytes",
//    "OutgoingBytes",
//  ]
//
//  tags                = "${local.tags}"
//}

module "launcher-eu-west-1" {
  source              = "./breck"
  region              = "eu-west-1"
  stream_name         = "${var.stream_name}"
  environment         = "${var.environment}"
  shard_count         = "${var.shard_count}"
  retention_period    = "${var.retention_period}"
}

module "launcher-ap-southeast-2" {
  source              = "./breck"
  region              = "ap-southeast-2"
  stream_name         = "${var.stream_name}" #"breck-ase2"
  environment         = "${var.environment}"
  shard_count         = "${var.shard_count}"
  retention_period    = "${var.retention_period}"
}

module "launcher-eu-central-1" {
  source              = "./breck"
  region              = "eu-central-1"
  stream_name         = "${var.stream_name}" #"breck-euc1" #
  environment         = "${var.environment}"
  shard_count         = "${var.shard_count}"
  retention_period    = "${var.retention_period}"
}

module "launcher-us-west-2" {
  source              = "./breck"
  region              = "us-west-2"
  stream_name         = "${var.stream_name}" #"breck-usw2"
  environment         = "${var.environment}"
  shard_count         = "${var.shard_count}"
  retention_period    = "${var.retention_period}"
}

//module "breck_ase2" {
//  source              = "./breck"
//
//  providers           = {
//    aws.ase2          = "aws.sydney"
//  }
//}
//
//module "breck_euc1" {
//  source              = "./breck"
//
//  providers           = {
//    aws.euc1          = "aws.frankfurt"
//  }
//}
//
//module "breck_usw2" {
//  source              = "./breck"
//
//  providers           = {
//    aws.usw2          = "aws.oregon"
//  }
//}

//module "breck" {
//  source              = "./breck"
//  providers           = {
//    aws.ase2          = "aws.sydney"
//    aws.euc1          = "aws.frankfurt"
//    aws.usw2          = "aws.oregon"
//  }
//}
