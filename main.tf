module "launcher-kinesis" {
  source              = "./modules/kinesis_stream"
  region              = "${var.region}"
}



