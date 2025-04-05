#!/bin/bash
set -e
sudo rm -rf /var/www/html/*
echo "===== BEFORE INSTALL START ====="

echo "Updating packages..."
sudo dnf update -y

echo "Installing Apache (httpd)..."
sudo dnf install -y httpd

echo "Starting and enabling Apache..."
sudo systemctl start httpd
sudo systemctl enable httpd

echo "===== BEFORE INSTALL COMPLETE ====="

