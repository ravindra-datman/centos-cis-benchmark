#!/bin/sh
# ** AUTO GENERATED **

# 3.5.1 - Ensure DCCP is disabled (Not Scored)
# 3.5.1 "Ensure DCCP is disabled (Not Scored)" No Server1 Workstation1

execute(){
modprobe -n -v dccp | grep -E "(install /bin/true|FATAL: Module dccp not found.)" || return $?
}
test_serial_number="3.5.1"
test_name="Ensure DCCP is disabled (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
