#!/bin/bash

FILENAME=$(date +"%d_%m_%y_%H_%M_%S.status")
{
    echo "HOSTNAME = $HOSTNAME"
    echo "TIMEZONE = $TIMEZONE"
    echo "USER = $USER"
    echo "OS = $OS"
    echo "DATE = $DATE"
    echo "UPTIME = $UPTIME"
    echo "UPTIME_SEC = $UPTIME_SEC seconds"
    echo "IP = $IP"
    echo "MASK = $MASK"
    echo "GATEWAY = $GATEWAY"
    echo "RAM_TOTAL = $RAM_TOTAL GB"
    echo "RAM_USED = $RAM_USED GB"
    echo "RAM_FREE = $RAM_FREE GB"
    echo "SPACE_ROOT = $SPACE_ROOT MB"
    echo "SPACE_ROOT_USED = $SPACE_ROOT_USED MB"
    echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE MB"
} > "$FILENAME"
echo "Информация сохранена в файл $FILENAME"