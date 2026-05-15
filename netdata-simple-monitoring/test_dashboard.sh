#!/bin/bash
echo "Installing stress tool..."
sudo apt install -y stress-ng

echo "Putting load on CPU and memory for 60 seconds..."
stress-ng --cpu 4 --vm 2 --vm-bytes 256M --timeout 60s

echo "Done - check the Netdata dashboard"
