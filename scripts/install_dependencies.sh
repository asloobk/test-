#!/bin/bash
sudo systemctl stop app.service
# Install Python and pip using the package manager
if command -v apt-get &> /dev/null; then
    apt-get update
    apt-get install -y python python-pip
elif command -v yum &> /dev/null; then
    yum update -y
    yum install -y python python-pip
elif command -v dnf &> /dev/null; then
    dnf install -y python3 python3-pip
fi

# Install pip if not already installed
if ! command -v pip &> /dev/null; then
    echo "Installing pip..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py
    rm get-pip.py
fi
# Navigate to the directory where requirements.txt is located
cd /home/ec2-user

# Install Python dependencies using pip
pip install -r requirements1.txt
