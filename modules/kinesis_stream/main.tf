
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
  stream_name         = "${var.stream_name}"
  environment         = "${var.environment}"
  shard_count         = "${var.shard_count}"
  retention_period    = "${var.retention_period}"
}

module "launcher-eu-central-1" {
  source              = "./breck"
  region              = "eu-central-1"
  stream_name         = "${var.stream_name}"
  environment         = "${var.environment}"
  shard_count         = "${var.shard_count}"
  retention_period    = "${var.retention_period}"
}

module "launcher-us-west-2" {
  source              = "./breck"
  region              = "us-west-2"
  stream_name         = "${var.stream_name}" 
  environment         = "${var.environment}"
  shard_count         = "${var.shard_count}"
  retention_period    = "${var.retention_period}"
}


