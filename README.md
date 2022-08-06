
# Terraform SQS Queue 🧜‍♀️

## Requirements 🐠

## Usage 🦑

### Running Python tests 🌊

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
