#!/bin/bash
apt-get update && apt-get install unzip -y
wget https://releases.hashicorp.com/terraform/0.14.2/terraform_0.14.2_linux_amd64.zip
unzip terraform_0.14.2_linux_amd64.zip
cp terraform /usr/local/bin/