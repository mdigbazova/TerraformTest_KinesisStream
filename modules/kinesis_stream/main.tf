provider "aws" {
  region  = "${var.region}"
}


locals {
  tags = {
    SYSTEM        = "DaVinci"
    OWNER         = "SolarWinds MSP Data Platform"
    ENV_NAME      = "${var.environment}"
    DESCRIPTION   = "Kinesis stream for project DaVinci KEA"
    MANAGEDBY     = "Terraform"
  }
}

resource "aws_kinesis_stream" "test_stream_encr_decr" {
  name             = "${var.stream_name}"
  shard_count      = "${var.shard_count}"
  retention_period = "${var.retention_period}"
  kms_key_id       = "${var.kms_key_id}"

  shard_level_metrics = [
    #  A list of shard-level CloudWatch metrics which can be enabled for the stream.
    "IncomingBytes",
    "OutgoingBytes",
  ]

  tags            = "${local.tags}"
}

