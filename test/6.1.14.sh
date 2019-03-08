#!/bin/sh
# ** AUTO GENERATED **

# 6.1.14 - Audit SGID executables (Not Scored)
#6.1.14 "Audit SGID executables (Not Scored)" No Server1 Workstation1

execute(){
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -2000 || return $?
}
test_serial_number="6.1.14"
test_name="Audit SGID executables (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
important="No"
