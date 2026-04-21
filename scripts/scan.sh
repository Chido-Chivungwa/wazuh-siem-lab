#!/bin/bash

# ============================================================
# Title: Basic Reconnaissance Scanner
# Author: Chido Chivungwa
# Purpose: Educational - SIEM Detection Lab
# Target: Ubuntu-Target VM
# ============================================================

# Check if user provided a target IP
if [ $# -eq 0 ]; then
    echo "[!] Error: No target specified"
    echo "[*] Usage: $0 <target-ip>"
    echo "[*] Example: $0 192.168.1.20"
    exit 1
fi

# Store the first argument in a variable
TARGET=$1

# Print banner
echo "=================================="
echo "  RECONNAISSANCE SCAN STARTED"
echo "=================================="
echo "[*] Target: $TARGET"
echo "[*] Start Time: $(date)"
echo "[*] Tool: Nmap (Stealth Scan)"
echo ""

# Run the actual scan
echo "[*] Scanning open ports..."
sudo nmap -sS -Pn $TARGET

# Print completion message
echo ""
echo "[*] Scan completed: $(date)"
echo "[*] Check Wazuh dashboard for detection alerts"



