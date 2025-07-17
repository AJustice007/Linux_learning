#!/bin/bash

USER_LIST=("user01" "user02" "user03")

for user in "${USER_LIST[@]}"; do
    if id "$user" &>/dev/null; then
        echo "User $user already exists. Skipping."
    else
        sudo useradd -m "$user"
        echo "$user:123456" | sudo chpasswd
        echo "User $user created."
    fi
done
