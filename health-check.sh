#!/bin/bash

echo "===== SERVER HEALTH CHECK ====="

echo ""
echo "Server Uptime:"
uptime

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Nginx Status:"
systemctl is-active nginx

echo ""
echo "Website Check:"
curl -I http://localhost | head -1

echo ""
echo "===== HEALTH CHECK COMPLETE ====="
