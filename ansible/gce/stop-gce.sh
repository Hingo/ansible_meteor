#!/bin/bash

current_folder=`pwd`
export SSL_CERT_FILE=$current_folder/ca-bundle.crt
export ANSIBLE_HOST_KEY_CHECKING=False
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/

ansible-playbook delete_instances_gce/site.yml -i ./inventory/ -f 5

#ansible-playbook example/site.yml -i example/hosts -vvvv -f 20
