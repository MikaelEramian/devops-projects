#!/bin/bash
echo "Stopping Netdata..."
sudo systemctl stop netdata
sudo systemctl disable netdata

echo "Removing Netdata..."
sudo apt remove -y netdata

echo "Cleanup complete"
