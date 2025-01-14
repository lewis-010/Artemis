#!/bin/bash

# input length of new password
while true; do
	read -p "length of new password: " length
	# validate input
	if [[ "$length" =~ ^[0-9]+$ ]]; then
		if [ "$length" -lt 12 ] || [ "$length" -gt 25 ]; then
			echo "length must be between 12 and 25 characters"
		else
			break
		fi
	else
		echo "invalid input"
	fi
done

# generate string using CSPRNG
password=$(head -c "$length" /dev/urandom | base64 | head -c "$length")
echo "new password: $password"
