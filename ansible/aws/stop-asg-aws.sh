#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=False

`ansible-vault view aws.creds`
ansible-playbook destroy_instances_aws/site.yml -e state=absent -i ./inventory/ --private-key vineet-michael-ansible.pem -vvvv
