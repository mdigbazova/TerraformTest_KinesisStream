variable region { }
variable stream_name { }
variable environment { }
variable shard_count { }
variable retention_period { }


provider "aws" {
  region              = "${var.region}"
}

locals {
  tags = {
    SYSTEM            = "DaVinci"
    OWNER             = "SolarWinds MSP Data Platform"
    ENV_NAME          = "${var.environment}"
    DESCRIPTION       = "Kinesis stream for project DaVinci KEA"
    MANAGED_BY        = "Terraform"
  }
}

resource "aws_kinesis_stream" "kinesis_stream" {
  name                = "${var.stream_name}"
  shard_count         = "${var.shard_count}"
  retention_period    = "${var.retention_period}"

  shard_level_metrics = [
    #  A list of shard-level CloudWatch metrics which can be enabled for the stream.
    "IncomingBytes",
    "OutgoingBytes",
  ]

  tags                = "${local.tags}"
}
