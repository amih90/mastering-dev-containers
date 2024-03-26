#!/bin/bash

# Update the package index
sudo apt update

# Update pip
pip3 install --upgrade pip

# Install Python dependencies
pip3 install --user -r webapp/requirements.txt
pip3 install --user -r ollama/requirements.txt

# Pull Generative AI Model
ollama pull phi3:mini

echo -e "\nWelcome to the playground!\n"