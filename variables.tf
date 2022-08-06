variable "create" {
  type = bool
}

variable "queue_name" {
  type = string
}

variable "deadletter_queue_policy" {
  type = string
}

variable "standard_queue_policy" {
  type = string
}

variable "environment" {
  type = string
}
