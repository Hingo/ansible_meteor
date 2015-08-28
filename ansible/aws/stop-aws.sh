#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=False
`ansible-vault view register_aws_creds.sh`
ansible-playbook create_instances_aws/site.yml -e state=absent -i ./inventory/ --private-key vineet-michael-ansible.pem --ask-vault-pass -vvvv
