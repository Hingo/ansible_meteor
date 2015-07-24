#!/bin/bash

current_folder=`pwd`
export SSL_CERT_FILE=$current_folder/ca-bundle.crt
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/

ansible-playbook create_instances_gce/site.yml -i ./gce.py -f 5
ansible-playbook delete_instances_gce/site.yml -i ./gce.py -f 5

#ansible-playbook example/site.yml -i example/hosts -vvvv -f 20
