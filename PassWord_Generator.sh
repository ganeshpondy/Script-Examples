#!/bin/bash

#Simple Password Generator. It will Generate 5 Sample Passwords

read -r -p "Please enter the length of the password: " PASS_LENGTH
read -r -p "Do you Required Special Characters in your Password? (yes/no): " SPEC_CHAR

#echo $SPEC_CHAR
echo "---------------------------"
echo "5 Sample Passwords"
echo "---------------------------"
for pass_seq in $(seq 1 5);
do
	#[[ "$SPEC_CHAR" = yes ]] && openssl rand -base64 48 | cut -c1-"$PASS_LENGTH"
	#[[ "$SPEC_CHAR" = no ]] && openssl rand -hex 48 | cut -c1-"$PASS_LENGTH"
	[[ "$SPEC_CHAR" = yes ]] && dd if=/dev/urandom count=200 bs=1 2>/dev/null | tr -cd "[:graph:]" | cut -c-"$PASS_LENGTH"
	[[ "$SPEC_CHAR" = no ]] && dd if=/dev/urandom count=200 bs=1 2>/dev/null | tr -cd "[:xdigit:]" | cut -c-"$PASS_LENGTH"
done
echo "---------------------------"