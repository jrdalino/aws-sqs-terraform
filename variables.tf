# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."    
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."    
}

# SQS Queue
variable "aws_sqs_queue_name" {
  type        = string
  description = "(Optional) This is the human-readable name of the queue. If omitted, Terraform will assign a random name."    
}

# variable "aws_sqs_queue_name_prefix" {
#   type        = string
#   description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."    
# }

variable "aws_sqs_queue_visibility_timeout_seconds" {
  type        = string
  default     = "30"  
  description = "(Optional) The visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see AWS docs."    
}

variable "aws_sqs_queue_message_retention_seconds" {
  type        = string
  default     = "345600"
  description = "(Optional) The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days)."
}

variable "aws_sqs_queue_max_message_size" {
  type        = string
  default     = "262144"
  description = "(Optional) The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB)."
}

variable "aws_sqs_queue_delay_seconds" {
  type        = string
  default     = "0"  
  description = "(Optional) The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds."
}

variable "aws_sqs_queue_receive_wait_time_seconds" {
  type        = string
  default     = "0"
  description = "(Optional) The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately."
}

# variable "aws_sqs_queue_policy" {
#   type        = string
#   description = "(Optional) The JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
# }

# variable "aws_sqs_queue_redrive_policy" {
#   type        = string
#   description = "(Optional) The JSON policy to set up the Dead Letter Queue, see AWS docs. Note: when specifying maxReceiveCount, you must specify it as an integer (5), and not a string ("5")."
# }

# variable "aws_sqs_queue_fifo_queue" {
#   type        = string
#   default     = "false"  
#   description = "(Optional) Boolean designating a FIFO queue. If not set, it defaults to false making it standard."
# }

# variable "aws_sqs_queue_content_based_deduplication" {
#   type        = string
#   description = "(Optional) Enables content-based deduplication for FIFO queues. For more information, see the related documentation"
# }

# variable "aws_sqs_queue_kms_master_key_id" {
#   type        = string
#   description = "(Optional) The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see Key Terms."
#  }

# variable "aws_sqs_queue_kms_data_key_reuse_period_seconds" {
#   type        = string
#   default     = "300"
#   description = "(Optional) The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes)."
# }

# variable "aws_sqs_queue_tags" {
#   type        = string
#   description = "(Optional) A mapping of tags to assign to the queue."
# }