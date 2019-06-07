output "kinesis_arn" {
  description = "The arn of the Kinesis stream"
  value       = "${aws_kinesis.arn}"
}

output "kinesis_name" {
  description = "The name of the Kinesis stream"
  value       = "${aws_kms_alias.key_alias.name}"
}


output "region_id" {
  description = "The region id"
  value       = "${aws_regions.region.id}"
}

output "region_name" {
  description = "The region name"
  value       = "${aws_regions.region.region}"
}

output "region_provider" {
  description = "The region name"
  value       = "${aws_regions.region.provider}"
}


