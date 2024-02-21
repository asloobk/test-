#!/bin/bash
if ! command -v pip &> /dev/null; then
    echo "Installing pip..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py
    rm get-pip.py
fi
# Navigate to the directory where requirements.txt is located
cd /home/ec2-user

# Install Python dependencies using pip
pip install -r requirements.txt
