#!/bin/bash

# Update the package database
sudo apt-get update

# Install necessary prerequisites
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker’s APT repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the package database with Docker packages
sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce

# Enable and start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Verify Docker installation
sudo docker --version

# Add current user to the Docker group (log out and log back in to apply)
sudo usermod -aG docker $USER

echo "Docker installation completed. Please log out and log back in to apply group changes."
