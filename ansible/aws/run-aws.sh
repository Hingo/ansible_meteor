#!/bin/bash

export AWS_ACCESS_KEY_ID='AKIAIVOD33X45YM5X6DQ'
export AWS_SECRET_ACCESS_KEY='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'

ansible-playbook create_instances_aws/site.yml -i ./inventory/ec2.py -vvvv
