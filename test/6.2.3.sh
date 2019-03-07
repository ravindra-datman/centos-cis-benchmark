#!/bin/sh
# ** AUTO GENERATED **

# 6.2.3 - Ensure no legacy "+" entries exist in /etc/shadow (Scored)
# 6.2.3 "Ensure no legacy "+" entries exist in /etc/shadow (Scored)" Yes Server1 Workstation1

execute(){
if [[ -r /etc/shadow ]]; then
   if [[ $(grep '^\+:' /etc/shadow) -eq '' ]] ; then
      return 0
   else
      return 1
   fi
else
   return 1
fi
}
test_serial_number="6.2.3"
test_name="Ensure no legacy "+" entries exist in /etc/shadow (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
