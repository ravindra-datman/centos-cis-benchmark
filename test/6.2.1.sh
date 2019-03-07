#!/bin/sh
# ** AUTO GENERATED **

# 6.2.1 - Ensure password fields are not empty (Scored)
# 6.2.1 "Ensure password fields are not empty (Scored)" Yes Server1 Workstation1

execute(){
if [[ -r /etc/shadow ]]; then

   export result=$(cat /etc/shadow | awk -F: '($2 == "" ) { print $1}')

   if [[ -z $result ]]; then
      return 0
   else
      return 1
   fi
else
   return 1
fi
}
test_serial_number="6.2.1"
test_name="Ensure password fields are not empty (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
