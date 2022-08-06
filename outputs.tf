output "standard_queue_arns" {
  value       = join("", aws_sqs_queue.terraform_queue.*.arn)
  description = "A list of queue arns for the newly created queues"
}

output "deadletter_queue_arns" {
  value       = join("", aws_sqs_queue.deadletter.*.arn)
  description = "A list of queue arns for the newly created queues"
}

output "standard_queue_id" {
  value       = join("", aws_sqs_queue.terraform_queue.*.id)
  description = "A list of queue IDs for the newly created queues"
}

output "deadletter_queue_id" {
  value       = join("", aws_sqs_queue.deadletter.*.id)
  description = "A list of queue IDs for the newly created queues"
}

