#!/bin/bash

stack_name=$1
template=$2
parameter=$3

if ! aws cloudformation describe-stacks --stack-name $stack_name > /dev/null 2>&1; then
    echo "Stack $stack_name does not exist"
	aws cloudformation create-stack \
		--stack-name $stack_name \
		--template-body file://$template \
		--parameters file://$parameter $iam_param\
		--region us-east-1 \
		--capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
		--profile udacity 
else
	echo "Stack $stack_name exists"
	aws cloudformation update-stack \
		--stack-name $stack_name \
		--template-body file://$template \
		--parameters file://$parameter $iam_param\
		--region us-east-1 \
		--capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
		--profile udacity
fi