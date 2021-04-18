#!/bin/bash

# Update repositories and install packages
apt update
apt install python3-gpiozero

# Download files
wget https://raw.githubusercontent.com/devramdin/MotionDetector/motiondetector.py
wget https://raw.githubusercontent.com/devramdin/MotionDetector/motiondetector.service

# Copy files
cp motiondetector.py /home/pi/scripts/motiondetector.py
cp motiondetector.service /lib/systemd/system/motiondetector.py

# Set file permissions
chmod +x /home/pi/scripts/motiondetector.py
chmod 644 /lib/systemd/system/motiondetector.service

# Enable and start service
systemctl enable motiondetector.service
systemctl start motiondetector.service