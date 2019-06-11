variable "environment" {
  type        = "string"
  description = "The name of the deployment environment."
  default     = "nonprod"
}

variable "stream_name" {
  description = "A name of the Kinesis stream as to be identified"
  type        = "string"
  default     = "breck"
}

variable "shard_count" {
  description = "The number of shards that the stream will use"
  type        = "string"
  default     = "1"
}

variable "retention_period" {
  description = "(Optional) Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours. Minimum value is 24. Default is 24."
  type        = "string"
  default     = "72"
}

variable "region" {
  description = "The region where AWS operations will take place"
  type        = "string"
  default     = "eu-west-1"
}


//variable "available_sources" {
//  description = "A list of available sources for which to run the scripts"
//  type = list(string)
//  default = [
//    "breck",
//    "avery",
//    "echo"
//  ]
//}










