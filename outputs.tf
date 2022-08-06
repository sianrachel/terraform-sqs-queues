output "standard_queue_arns" {
  value       = element(concat(aws_sqs_queue.terraform_queue.*.arn, [""]), 0)
  description = "A list of queue arns for the newly created queues"
}

output "deadletter_queue_arns" {
  value       = element(concat(aws_sqs_queue.deadletter.*.arn, [""]), 0)
  description = "A list of queue arns for the newly created queues"
}

output "standard_queue_id" {
  value       = element(concat(aws_sqs_queue.terraform_queue.*.id, [""]), 0)
  description = "A list of queue IDs for the newly created queues"
}

output "deadletter_queue_id" {
  value       = element(concat(aws_sqs_queue.deadletter.*.id, [""]), 0)
  description = "A list of queue IDs for the newly created queues"
}
