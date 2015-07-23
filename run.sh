#!/bin/bash

current_folder=`pwd`
export SSL_CERT_FILE=$current_folder/ca-bundle.crt

ansible-playbook create_instances_gce/site.yml -i example/hosts -vvvv -f 5
#ansible-playbook example/site.yml -i example/hosts -vvvv -f 20
