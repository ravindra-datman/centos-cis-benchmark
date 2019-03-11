#!/bin/sh
# ** AUTO GENERATED **

# 6.2.2 - Ensure no legacy "+" entries exist in /etc/passwd (Scored)
# 6.2.2 "Ensure no legacy "+" entries exist in /etc/passwd (Scored)" Yes Server1 Workstation1

execute(){
if [[ -r /etc/passwd ]]; then
   if [[ $(grep '^\+:' /etc/passwd) -eq '' ]] ; then
      return 0
   else
      return 1
   fi
else
      return 1
fi
}
test_serial_number="6.2.2"
test_name="Ensure no legacy "+" entries exist in /etc/passwd (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
