#!/bin/bash

export ANSIBLE_HOST_KEY_CHECKING=False

echo ""
echo "SIGNAL"
echo "launching automatron... putting on ec2 jacket..."
echo ""
echo ""
echo "****************************************************************************"
echo "* Please enter the ansible-vault password to decrypt your AWS credentials: *"
echo "****************************************************************************"
echo ""
`ansible-vault view aws.creds`
echo ""
ansible-playbook create_asg_aws/site.yml -e state=present -i ./inventory/ --private-key vineet-michael-ansible.pem
