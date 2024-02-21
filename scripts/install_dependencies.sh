#!/bin/bash

# Update system and install necessary packages
sudo yum update -y
sudo yum install -y python3 python3-pip

# Navigate to the home directory of ec2-user
cd /home/ec2-user

# Create a directory for the project
mkdir my_project

# Navigate to the project directory
cd my_project

# Create a virtual environment
python3 -m venv my_env

# Activate the virtual environment
source my_env/bin/activate

# Install Flask within the virtual environment
pip install flask

# Move the app.py file to the virtual environment
mv /home/ec2-user/app.py /home/ec2-user/my_project/my_env/

# Navigate to the virtual environment directory
cd /home/ec2-user/my_project/my_env/

# Run the Flask application
python app.py
