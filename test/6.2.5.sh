#!/bin/sh
# ** AUTO GENERATED **

# 6.2.5 - Ensure root is the only UID 0 account (Scored)

if [[ $(cat /etc/passwd | awk -F: '($3 == 0) { print $1 }') -eq 'root' ]] ; then
   return 0
else
   return 1
fi
