#!/bin/sh
# ** AUTO GENERATED **

# 3.5.4 - Ensure TIPC is disabled (Not Scored)
# 3.5.4 "Ensure TIPC is disabled (Not Scored)" No Server1 Workstation1

execute(){
modprobe -n -v tipc | grep -E "(install /bin/true|FATAL: Module tipc not found.)" || return $?
}
test_serial_number="3.5.4"
test_name="Ensure TIPC is disabled (Not Scored)"
scored="NO"
server="Server1"
workstation="Workstation1"
important="No"
