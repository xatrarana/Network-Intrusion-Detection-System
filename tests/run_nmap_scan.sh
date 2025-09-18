#!/bin/bash
TARGET=${1:-192.168.198.148}
sudo nmap -sS -p1-200 $TARGET
echo "Nmap scan done"
