
# Terraform SQS Queue (Part 1/2) 🧜‍♀️

A terraform module that creates an [AWS SQS](https://aws.amazon.com/sqs/) queue on `init`. This module decouples providers into test file so that terraform can be run against a `non-prod` and `prod` environment.

## Requirements 🐠

- AWS Account with AdministratorAccess
- [AWSCLI](https://aws.amazon.com/cli/) installed


| Name | Version |
|------|---------|
| [terraform](https://www.terraform.io/) | >= 0.15.3 |
| [hashicorp/aws](https://registry.terraform.io/providers/hashicorp/aws/latest) | >= 3.48 |

---

## Usage 🦑

Make sure that you have an AWS account configured where you can assume AdminitratorAccess.

```
aws configure 
```

Add your access key and secret accesskey via the terminal.

Navigate to a test env directory:

```
cd /testing/non-prod
```

Initialize Terraform with the env you would like to create sqs queues in:

```
terrform init
terraform plan
terraform apply
```

To see `queue_urls`, stay in the env directory you created your SQS queue in and run:

```
cd /testing/non-prod
terraform output
```

To create queues from the root dir (please note that you will be required to enter an env and queue name):

```
terraform init
terraform plan
terraform apply
```

To see a `stateful snapshot`, in the root directory run:

```
terraform show
```

### Using pre-commit Hooks 🐠

This repository can be linted with a [pre-commit](https://pre-commit.com/) hook to
enforce consistent Terraform code and documentation. 

This is accomplished by
triggering hooks during `git commit` to block commits that don't pass checks. 

You can find the hooks that are being
executed in the `.pre-commit-config.yaml` file.

You can install [pre-commit](https://pre-commit.com/) and this repo's pre-commit hooks on a Mac by running the following commands:

```
brew install pre-commit gawk terraform-docs coreutils
pre-commit install --install-hooks
```
Please ensure you're running at least `terraform-docs` `v0.15.0`

Then run the following command to ensure the codebase is in a good state:

```
pre-commit run -a
```
---

### Query SQS Queues 🐚

You can query the SQS queues you have created with Python [here](https://github.com/sianrachel/sqs-query-with-python)

If you don't have access to this repo, then please request.
