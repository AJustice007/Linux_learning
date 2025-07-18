#!/bin/bash

LOG_FILE="/var/log/syscheck.log"
DISK_THRESHOLD=80
WARN() { echo "$(date '+%Y-%m-%d %H:%M:%S') [WARN] $*" >> "$LOG_FILE"; }
INFO() { echo "$(date '+%Y-%m-%d %H:%M:%S') [INFO] $*" >> "$LOG_FILE"; }

df -P | grep -vE 'tmpfs|cdrom' | while read -r fs size used avail pct mount; do
    # 移除百分比符号
    pct="${pct%\%}"
    # 检查是否为数字
    if [[ "$pct" =~ ^[0-9]+$ ]]; then
        if [ "$pct" -ge "$DISK_THRESHOLD" ]; then
            WARN "Disk at $mount is ${pct}% used (${used} of ${size})"
        fi
    fi
done

mem_used=$(free -m | awk 'NR==2 {printf "%.1f%%",$3/$2*100}')
INFO "Memory usage:$mem_used"

cpu_load=$(top -bn1 | grep "load average" | awk '{printf "%.2f",$(NF-2)}')
INFO "CPU 1-min load:$cpu_load"

INFO "Recent logins:"
last -n3 | awk '{print $1,$3,$4,$5,$6}' >> "$LOG_FILE"

INFO "----- syscheck complete -----"
