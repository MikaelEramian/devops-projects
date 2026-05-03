#!/bin/bash

echo "Server Stats"
echo ""

echo "System Info"
cat /etc/os-release | grep PRETTY_NAME
echo ""

echo"Uptime"
uptime
echo""

echo "Logged In Users"
who
echo""

echo "CPU Usage"
top -bn1 | grep "Cpu(s)"
echo ""

echo "Memory Usage"
free -h
echo ""

echo "Disk Usage"
df -h /
echo ""

echo "Top 5 Processes by CPU"
ps aux | head -6
echo ""

echo "Top 5 Processes by Memory"
ps aux | head -6
