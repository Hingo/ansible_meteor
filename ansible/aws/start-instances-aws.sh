#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=False

echo ""
echo "****************************************************************************"
echo "* Please enter the ansible-vault password to decrypt your AWS credentials: *"
echo "****************************************************************************"
echo ""
`ansible-vault view aws.creds`
ansible-playbook create_instances_aws/site.yml -e state=present -i ./inventory/ --private-key vineet-michael-ansible.pem
