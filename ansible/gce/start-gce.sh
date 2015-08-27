#!/bin/bash

current_folder=`pwd`
export SSL_CERT_FILE=$current_folder/ca-bundle.crt
export ANSIBLE_HOST_KEY_CHECKING=False
export PYTHONPATH=$PYTHONPATH:./inventory/:/usr/local/lib/python2.7/site-packages/

ansible-playbook create_instances_gce/site.yml -i ./inventory/ -f 5 -vvvv

#ansible-playbook example/site.yml -i example/hosts -vvvv -f 20
