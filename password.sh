#!/bin/bash

# input length of new password
while true; do
	echo "length of new password:"
	
	read length

	# validate input
	if [[ "$length" =~ ^[0-9]*$ ]]; then
		if [ "$length" -lt 12 ] || [ "$length" -gt 20 ]; then
			echo "length must be between 12 and 20 characters"
		else
			break
		fi
	else
		echo "invalid input"
	fi
done

# generate string using CSPRNG
password=$(head -c "$length" /dev/urandom | base64)

echo "new password: $password"
