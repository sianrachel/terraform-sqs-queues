module "sqs_queue_test" {
  create     = true
  for_each   = toset(["test-queue-100", "test-queue-200", "test-queue-300"])
  source     = "../.."
  queue_name = each.value
  standard_queue_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sqs:ReceiveMessage",
          "sqs:DeleteMessage",
          "sqs:SendMessage"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
  deadletter_queue_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sqs:ReceiveMessage",
          "sqs:DeleteMessage"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
  environment = "non-prod"
}
