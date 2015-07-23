#!/bin/bash

export SSL_CERT_FILE=/home/user/path-to-your-ca-file.crt
ansible-playbook example/site.yml -i example/hosts -vvvv -f 20
