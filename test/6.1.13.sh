#!/bin/sh
# ** AUTO GENERATED **

# 6.1.13 - Audit SUID executables (Not Scored)
# 6.1.13 "Audit SUID executables (Not Scored)" No Server1 Workstation1

execute(){
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -4000 || return $?
}
test_serial_number="6.1.13"
test_name="Audit SUID executables (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
