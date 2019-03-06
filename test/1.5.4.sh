#!/bin/sh
# ** AUTO GENERATED **

# 1.5.4 - Ensure prelink is disabled (Scored)
#1.5.4 "Ensure prelink is disabled (Scored)" Yes Server1 Workstation1

execute(){
rpm -q prelink | grep -E "package prelink is not installed" || return $1
}
test_serial_number="1.5.4"
test_name="Ensure prelink is disabled (Scored)"
scored="Yes"
server="server1"
workstation="Workstation1"
