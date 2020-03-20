# SQS Queue
output "aws_sqs_queue_id" {
  value       = "${aws_sqs_queue.this.id}"
  description = "The URL for the created Amazon SQS queue."
}

output "aws_sqs_queue_arn" {
  value       = "${aws_sqs_queue.this.arn}"
  description = "The ARN of the SQS queue"
}