#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=False

echo "Please enter the ansible-vault password to decrypt your AWS credentials:"
`ansible-vault view aws.creds`
ansible-playbook destroy_instances_aws/site.yml -e state=absent -i ./inventory/ --private-key vineet-michael-ansible.pem