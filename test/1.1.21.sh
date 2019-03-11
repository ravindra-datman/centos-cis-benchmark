#!/bin/sh
# ** AUTO GENERATED **

# 1.1.21 - Ensure sticky bit is set on all world-writable directories (Scored)
# 1.1.21 "Ensure sticky bit is set on all world-writable directories (Scored)" Yes Server1 Workstation1

execute(){
dirs="$(df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \))"
[[ -z "${dirs}" ]] || return 1
}
test_serial_number="1.1.21"
test_name="Ensure sticky bit is set on all world-writable directories (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
