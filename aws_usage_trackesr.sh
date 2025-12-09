#!/bin/bash

####################
# Author: Anurag
# Date: 09/12/2025
#
# This script will report the AWS resource usage
#
# Version: v1
####################

#run the script in debug mode
set -x
 
#list S3 buckets
echo “Print the list of S3 buckets”
aws s3 ls
	
#This command runs the aws s3 ls command and overwrites the file named resourceTracker with its output
echo “Print the list of S3 buckets and store the output in resourceTracker”
aws s3 ls > resourceTracker
	
	#list EC2 Instances
echo “Print the list of EC2 instances”
aws ec2 describe-instances

# get the particular Instance id from a JSON then we have use jq for json parser and there is yq for YAML parser also
echo “get the particular Instance id from a JSON”
aws ec2 describe-instances | jq ‘Reservations[].Instances[].InstanceId’
	
#list lambda
echo “Print the list of lambda functions”
#This command runs the aws lambda list-functions command and appends its output to the end of the existing resourceTracker file
aws lambda list-functions >> resourceTracker:q!
	
#list IAM users
echo “Print the list of IAM users”
aws iam list-user
