#!/bin/bash

az extension add --name azure-devops

az login

export ORGANIZATION_NAME=<your-organization>
export PROJECT_NAME=<your-project>

az devops configure --defaults organization=https://dev.azure.com/${ORGANIZATION_NAME} project=${PROJECT_NAME}

# powershell
sudo apt update && \
sudo apt-get install -y wget apt-transport-https software-properties-common && \
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb && \
sudo dpkg -i packages-microsoft-prod.deb && \
sudo apt-get update && \
sudo apt-get install -y powershell