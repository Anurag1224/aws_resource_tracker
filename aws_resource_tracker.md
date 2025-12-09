# AWS Resource Tracker Script

A Bash script to quickly report AWS resource usage from the command line.  
This script retrieves details about S3 buckets, EC2 instances, Lambda functions, and IAM users, and stores selected outputs in a `resourceTracker` file for easy reference.

---

## 📘 Overview

This script uses the AWS CLI and jq to generate a summary of AWS resources. It is useful for DevOps engineers, cloud learners, and system administrators who want a simple way to audit their AWS environment.

The script performs the following actions:

- Lists S3 buckets  
- Stores S3 bucket list into a file  
- Lists EC2 instances  
- Extracts EC2 Instance IDs using `jq`  
- Lists Lambda functions and appends them to the output file  
- Lists IAM users  

---

## 🛠️ Prerequisites

Before running the script, ensure:

1. **AWS CLI is installed and configured**
   ```bash
   aws configure

2. **jq is installed (JSON parser)**
    ```bash
    sudo apt-get install jq       # Debian/Ubuntu

3. **IAM permissions to access:**
    - S3
    - EC2
    - Lambda
    - IAM

## ▶️ How to Use

1. **Save the script as aws_resource_tracker.sh**

2. **Make it executable**
    ```bash
    chmod u+x aws_resource_tracker.sh

3. **Run it**
    ```bash
    ./aws_resource_tracker.sh

## 📁 Output File
- resourceTracker
- Contains:
    - S3 bucket list
    - Lambda function list

Useful for cloud audits and automation tasks.

## ⚠️ Notes

- Remove set -x if debug logs are not needed.

- Ensure AWS credentials are configured properly.

- Commands may fail if IAM permissions are insufficient.

