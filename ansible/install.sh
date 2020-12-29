#!/bin/bash
echo "
# -------------------------------
# APT GET UPDATE
# -------------------------------"
apt-get update && apt-get install unzip -y

echo "
# -------------------------------
# INSTALL DOCKER
# -------------------------------"
curl -fsSL https://get.docker.com | bash

echo "
# -------------------------------
# INSTALL AWS cli
# -------------------------------"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install