resource "aws_sqs_queue" "terraform_queue" {
  count                     = var.create ? 1 : 0
  name                      = "${var.environment}-${var.queue_name}"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.deadletter[0].arn
    maxReceiveCount     = 4
  })
  redrive_allow_policy = jsonencode({
    redrivePermission = "byQueue",
    sourceQueueArns   = ["${aws_sqs_queue.deadletter[0].arn}"]
  })

  tags = {
    Environment = var.environment
  }
}

resource "aws_sqs_queue" "deadletter" {
  count                      = var.create ? 1 : 0
  name                       = "${var.environment}-${var.queue_name}-dlq"
  message_retention_seconds  = 86400
  visibility_timeout_seconds = 60

  tags = {
    Environment = var.environment
  }
}
