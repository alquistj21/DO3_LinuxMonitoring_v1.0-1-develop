#!/bin/bash

HOSTNAME=$(hostname)
TIMEZONE=$(timedatectl show -p Timezone --value)
USER=$(whoami)
OS=$(lsb_release -ds)
DATE=$(date +"%d %B %Y %T")
UPTIME=$(uptime -p)
UPTIME_SEC=$(awk '{print $1}' /proc/uptime)
IP=$(hostname -I | awk '{print $1}')
MASK=$(ip -o -4 addr show | awk '{print $4}')
GATEWAY=$(ip route | grep default | awk '{print $3}')

MEMORY_INFO=$(free -g)
RAM_TOTAL=$(free --bytes | awk '/Mem/{printf "%.3f", $2 / 1000000000}')
RAM_USED=$(free --bytes | awk '/Mem/{printf "%.3f", $3 / 1000000000}')
RAM_FREE=$(free --bytes | awk '/Mem/{printf "%.3f", $4 / 1000000000}')

SPACE_ROOT=$(df -k | grep '/$' | awk '{printf "%.2f", $2 / 1000}')
SPACE_ROOT_USED=$(df -k | grep '/$' | awk '{printf "%.2f", $3 / 1000}')
SPACE_ROOT_FREE=$(df -k | grep '/$' | awk '{printf "%.2f", $4 / 1000}')