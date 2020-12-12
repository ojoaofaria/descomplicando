#!/bin/bash
# -------------------------------
# APT GET UPDATE
# -------------------------------
echo "UPDATE"
apt-get update
# -------------------------------
# INSTALL DOCKER
# -------------------------------
echo "INSTALL DOCKER"
curl -fsSL https://get.docker.com | bash