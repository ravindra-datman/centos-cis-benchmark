#!/bin/sh
# ** AUTO GENERATED **

# 6.1.11 - Ensure no unowned files or directories exist (Scored)
# 6.1.11 "Ensure no unowned files or directories exist (Scored)" Yes Server1 Workstation1

execute(){
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -nouser || return $?
}
test_serial_number="6.1.11"
test_name="Ensure no unowned files or directories exist (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
