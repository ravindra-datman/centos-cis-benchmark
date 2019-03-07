#!/bin/sh
# ** AUTO GENERATED **

# 3.7 - Ensure wireless interfaces are disabled (Not Scored)
# 3.7 "Ensure wireless interfaces are disabled (Not Scored)" No Server1 Workstation2

execute(){
for i in $(iwconfig 2>&1 | egrep -v "no[[:space:]]*wireless" | cut -d' ' -f1); do
 ip link show up | grep "${i}:"
 if [[ "$?" -eq 0 ]]; then
  return 1
 fi
done
}
test_serial_number="3.7"
test_name="Ensure wireless interfaces are disabled (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation2"
