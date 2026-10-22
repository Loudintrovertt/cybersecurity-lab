#!/bin/bash

# ======================================================
#  SYSTEM & NETWORK HEALTH MONITORING SCRIPT
# ======================================================

LOG_FILE="system_monitor.log"

echo "==================================================" | tee -a $LOG_FILE
echo "       SYSTEM MONITORING REPORT - $(date)"          | tee -a $LOG_FILE
echo "==================================================" | tee -a $LOG_FILE

# 1. Check Logged In Users
echo -e "\n[+] Currently Logged In Users:" | tee -a $LOG_FILE
who | tee -a $LOG_FILE

# 2. Check Memory (RAM) Usage
echo -e "\n[+] Memory Usage Summary:" | tee -a $LOG_FILE
free -h | tee -a $LOG_FILE

# 3. Check Disk Usage
echo -e "\n[+] Disk Storage Allocation:" | tee -a $LOG_FILE
df -h / | tee -a $LOG_FILE

# 4. Check Open Network Ports / Listening Services
echo -e "\n[+] Listening Network Services:" | tee -a $LOG_FILE
ss -tuln | tee -a $LOG_FILE

echo -e "\n==================================================" | tee -a $LOG_FILE
echo "       REPORT SAVED TO $LOG_FILE"                     | tee -a $LOG_FILE
echo -e "==================================================\n" | tee -a $LOG_FILE
