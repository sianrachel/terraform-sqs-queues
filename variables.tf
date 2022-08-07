variable "queue_name" {
  description = "Mutable queue name"
  type        = string
}

variable "environment" {
  type        = string
  description = "Mutable env name"
}

variable "create" {
  type        = bool
  default     = true
  description = "Queue creation var set to true as default"
}

variable "dlq_append" {
  type        = string
  default     = "dlq"
  description = "Dead letter queue appendage var"
}
