output "standard_queue_arns" {
  description = "A list of queue arns for the newly created queues"
  value = element(
    concat(
      aws_sqs_queue.terraform_queue.*.arn,
      [""]
    ),
    0
  )
}

output "deadletter_queue_arns" {
  description = "A list of queue arns for the newly created queues"
  value = element(
    concat(
      aws_sqs_queue.deadletter.*.arn,
      [""]
    ),
    0
  )
}

output "standard_queue_id" {
  description = "A list of queue IDs for the newly created queues"
  value = element(
    concat(
      aws_sqs_queue.terraform_queue.*.id,
      [""]
    ),
    0
  )
}

output "deadletter_queue_id" {
  description = "A list of queue IDs for the newly created queues"
  value = element(
    concat(
      aws_sqs_queue.deadletter.*.id,
      [""]
    ),
    0
  )
}
