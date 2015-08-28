#!/bin/bash

echo "Please enter the vault password for the AWS credentials"

`ansible-vault view aws.creds`
