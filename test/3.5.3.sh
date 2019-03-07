#!/bin/sh
# ** AUTO GENERATED **

# 3.5.3 - Ensure RDS is disabled (Not Scored)
# 3.5.3 "Ensure RDS is disabled (Not Scored)" No Server1 Workstation1

execute(){
modprobe -n -v rds | grep -E "(install /bin/true|FATAL: Module rds not found.)" || return $?
}
test_serial_number="3.5.3"
test_name="Ensure RDS is disabled (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
