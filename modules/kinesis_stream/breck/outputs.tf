output "kinesis_arn" {
  description = "The arn of the Kinesis stream"
  value       = "${aws_kinesis_stream.kinesis_stream.arn}"
}

output "kinesis_name" {
  description = "The name of the Kinesis stream"
  value       = "${aws_kinesis_stream.kinesis_stream.name}"
}


output "kinesis_id" {
  description = "The Kinesis stream id"
  value       = "${aws_kinesis_stream.kinesis_stream.id}"
}

//output "provider" {
//  description = "The region id"
//  value       = "${aws_kinesis_stream.kinesis_stream.provider}"
//}

output "tags" {
  description = "The region name"
  value       = "${aws_kinesis_stream.kinesis_stream.tags}"
}





