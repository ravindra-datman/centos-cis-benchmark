#!/bin/sh
# ** AUTO GENERATED **

# 6.1.10 - Ensure no world writable files exist (Scored)
#6.1.10 "Ensure no world writable files exist (Scored)" Yes Server1 Workstation1

execute(){
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -0002 || return $?
}
test_serial_number="6.1.10"
test_name="Ensure no world writable files exist (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
