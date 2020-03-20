# ECR Repository
resource "aws_sqs_queue" "this" {
  name                        = var.aws_sqs_queue_name
  visibility_timeout_seconds  = var.aws_sqs_queue_visibility_timeout_seconds
  message_retention_seconds   = var.aws_sqs_queue_message_retention_seconds
  max_message_size            = var.aws_sqs_queue_max_message_size
  delay_seconds               = var.aws_sqs_queue_delay_seconds
  receive_wait_time_seconds   = var.aws_sqs_queue_receive_wait_time_seconds
}