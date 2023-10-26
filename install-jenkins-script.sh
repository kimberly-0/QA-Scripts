#! /usr/bin/bash

echo "Running script to install Jenkins..."

sudo apt update && sudo apt upgrade -y

sudo apt install -y openjdk-11-jre

sudo bash

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key \
        | sudo tee /usr/share/keyrings/jenkins-keyring.asc > \
        /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
        https://pkg.jenkins.io/debian binary/ | \
        sudo tee /etc/apt/sources.list.d/jenkins.list > \
        /dev/null

sudo apt-get update

sudo apt-get install -y jenkins

sudo apt-get install -y git docker.io

echo "Completed Jenkins installation script"

initialAdminPassword=$(cat /var/lib/jenkins/secrets/initialAdminPassword)

echo "Initial admin password for Jenkins: " $initialAdminPassword 
