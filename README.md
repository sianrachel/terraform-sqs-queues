
# Terraform SQS Queue 🧜‍♀️

## Requirements 🐠

- AWS Account with AdministratorAccess
- AWS CLI or other role assumption tool eg Leapp installed
- Terraform vX.XX

## Usage 🦑

Make sure that you have an AWS account configured where you can assume AdminitratorAccess.

```
aws configure 
```

Add your access key and secret accesskey via the terminal.

Navigate to either non-prod or prod directory:

```
cd /testing/non-prod
```
Then initialize Terraform with the environment you would like to create sqs queues in. 

```
terrform init
terraform plan
terraform apply
```

### Testing the terraform module ⚓

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

