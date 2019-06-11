//provider "aws" {
//  version             = "~> 2.14"
//  region              = "${var.region}"
//  #region              = "eu-west-1"
//}

module "launcher-kinesis" {
  source              = "./modules/kinesis_stream"
  region              = "${var.region}"
//  stream_name         = "${var.stream_name}"
//  environment         = "${var.environment}"
//  shard_count         = "${var.shard_count}"
//  retention_period    = "${var.retention_period}"
}

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



# calling regions:
//module "region_ap-southeast-2" {
//  source    = "./modules/kinesis_stream/breck/ap-southeast-2"
//  providers = {
//    aws = "aws.sydney"
//  }
//}
//
//module "region_eu-central-1" {
//  source    = "./modules/kinesis_stream/breck/eu-central-1"
//  providers = {
//    aws = "aws.frankfurt"
//  }
//}
//
////module "region_eu-west-1" {
////  source    = "./modules/kinesis_stream/breck/eu-west-1"
////  providers = {
////    aws = "aws.ireland"
////  }
////}
//
//module "region_us-west-2" {
//  source    = "./modules/kinesis_stream/breck/us-west-2"
//  providers = {
//    aws = "aws.oregon"
//  }
//}


