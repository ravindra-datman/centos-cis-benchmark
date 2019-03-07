#!/bin/sh
# ** AUTO GENERATED **

# 6.2.5 - Ensure root is the only UID 0 account (Scored)
# 6.2.5 "Ensure root is the only UID 0 account (Scored)" Yes Server1 Workstation1

execute(){
if [[ $(cat /etc/passwd | awk -F: '($3 == 0) { print $1 }') -eq 'root' ]] ; then
   return 0
else
   return 1
fi
}
test_serial_number="6.2.5"
test_name="Ensure root is the only UID 0 account (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
