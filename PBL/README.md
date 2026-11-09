# Project 16: Automating AWS Infrastructure with Terraform

Welcome to **Project 16**! Building on manual AWS deployments, this project automates the provisioning of core AWS networking infrastructure—specifically a Virtual Private Cloud (VPC) and dynamic public subnets—using **Terraform (Infrastructure as Code)**.

---

## 🏗️ Project Architecture & Components

This project implements best practices for writing clean, reusable, and dynamic Terraform code:
* **AWS Provider:** Connects Terraform to your target AWS region (`eu-central-1`).
* **VPC:** Custom isolated virtual network (`172.16.0.0/16`) with DNS support and hostnames enabled.
* **Dynamic Public Subnets:** Uses AWS Data Sources (`aws_availability_zones`), list functions (`length`), and CIDR math algorithms (`cidrsubnet`) to automatically provision subnets across available zones without hardcoding.
* **Separation of Concerns:** Configurations are split across modular files (`main.tf`, `variables.tf`, and `terraform.tfvars`).

---

## 📂 Project Directory Structure

Your `PBL` working directory is organized as follows:

```text
PBL/
├── main.tf                 # Core resource declarations (VPC, Subnets, Data Sources)
├── variables.tf            # Input variable declarations and defaults
├── terraform.tfvars        # Actual environment variable values assigned for execution
├── terraform.tfstate       # Tracks exact state of deployed cloud infrastructure
└── terraform.tfstate.backup# Previous infrastructure state snapshot

Prerequisites & Setup
1- AWS CLI & Authentication: Configure programmatic access via terminal or AWS CLI (aws configure) using an IAM user with AdministratorAccess.

2- Terraform CLI: Ensure Terraform is installed on your workstation.

3 - AWS S3 Backend Bucket: (Optional/Recommended) Create a unique S3 bucket to manage remote state for upcoming projects (e.g., <yourname>-dev-terraform-bucket).

Execution Guide

1- Initialize Terraform (downloads required AWS provider plugins):

Bash


terraform init

2- Preview Changes (inspect the execution plan):

Bash


terraform plan

3- Apply Configuration (provision your AWS resources):

Bash


terraform apply

4- Cleanup / Destroy Resources (when finished testing in development):

Bash


terraform destroy


