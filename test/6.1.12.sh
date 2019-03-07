#!/bin/sh
# ** AUTO GENERATED **

# 6.1.12 - Ensure no ungrouped files or directories exist (Scored)
# 6.1.12 "Ensure no ungrouped files or directories exist (Scored)" Yes Server1 Workstation1

execute(){
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -nogroup || return $?
}
test_serial_number="6.1.12"
test_name="Ensure no ungrouped files or directories exist (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
