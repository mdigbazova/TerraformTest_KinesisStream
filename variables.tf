variable "environment" {
  type        = "string"
  description = "The name of the deployment environment."
  default     = "prod"
}

variable "stream_name" {
  description = "A name of the Kinesis stream as to be identified"
  type        = "string"
  default     = "prod.ap2.breck"
}

variable "shard_count" {
  description = "The number of shards that the stream will use"
  type        = "number"
  default     = 1
}

variable "retention_period" {
  description = "(Optional) Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours. Minimum value is 24. Default is 24."
  type        = "number"
  default     = 72
}


variable "kms_key_id" {
  description = "(Optional) The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias alias/aws/kinesis.."
  type        = "string"
  default     = "62e74785-bbe4-44ea-ab7f-9f1e53ed605e"
}

variable "region" {
  description = "The region where AWS operations will take place"
  type        = "string"
}

variable "available_regions" {
  description = "A list of available regions in which to run scripts"
  type = list(string)
}











