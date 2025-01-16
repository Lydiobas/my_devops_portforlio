# <!-- 
# (MONITOR RESOURCES WITH SHELL SCRIPTING)
# steps to follow
# 1) write all the number of resources in a file
# 2) exercute the processes on a scheduled cron job -->

#!/bin/bash
################################################################
# AUTHOR: Lydia Taniform
# DATE: 01/13/2025
# version: v1 

# DESCRIPTION: This script is used to monitor and report aws resource usage

################################################################

set -x #debug mode
# aws s3
# aws ec2
# aws lambda
# aws iam users

#list s3 buckets 
echo "print list of s3 buckets"
aws s3 ls

#list ec2 instances 
echo "print list of ec2 instances"
aws ec2 describe-instances #  if you want just the id use this command 
aws ec2 describe-instances | jq.' .Reservations[].Instances[].InstanceId'

#list lambda functions 
echo "print list of lambda functions"
aws lambda list-functions

#list iam users 
echo "print list of iam users"
aws iam list-users





