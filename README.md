# GCP Infrastructure Pipeline for SOC2 Compliance

This repo defines a secure, auditable, and reproducible GCP infrastructure pipeline using Terraform and GitLab CI.

## Principles

- **Environment Isolation**: Dev, Staging, and Prod live in separate GCP projects under separate folders.
- **Least Privilege IAM**: Scoped service accounts per env. No wildcards. No human keys.
- **Infrastructure as Code**: Terraform-only resource creation. No console changes.
- **CI/CD Enforcement**: All infra changes go through GitLab pipelines. Local applies are blocked.
- **Auditability**: Enabled GCP Audit Logs + centralized state + change approvals.
