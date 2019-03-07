#!/bin/sh
# ** AUTO GENERATED **

# 3.5.2 - Ensure SCTP is disabled (Not Scored)
#3.5.2 "Ensure SCTP is disabled (Not Scored)" No Server1 Workstation1

execute(){
modprobe -n -v sctp | grep -E "(install /bin/true|FATAL: Module sctp not found.)" || return $?
}
test_serial_number="3.5.2"
test_name="Ensure SCTP is disabled (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
