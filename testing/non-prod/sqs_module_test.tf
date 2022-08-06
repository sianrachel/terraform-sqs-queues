locals {
  queue_names = ["test-queue-100", "test-queue-200", "test-queue-300"]
}

module "sqs_queue_test" {
  for_each    = toset(local.queue_names)
  source      = "../.."
  queue_name  = each.value
  environment = "non-prod"
}

output "sqs_queue_test" {
  value = module.sqs_queue_test
}
