#!/bin/sh
# ** AUTO GENERATED **

# 6.2.4 - Ensure no legacy "+" entries exist in /etc/group (Scored)
# 6.2.4 "Ensure no legacy "+" entries exist in /etc/group (Scored)" Yes Server1 Workstation1

execute(){
if [[ $(grep '^\+:' /etc/group) -eq '' ]] ; then
   return 0
else
   return 1
fi
}
test_serial_number="6.2.4"
test_name="Ensure no legacy "+" entries exist in /etc/group (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
