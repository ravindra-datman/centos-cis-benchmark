#!/bin/sh
# ** AUTO GENERATED **

# 1.6.1.5 - Ensure the MCS Translation Service (mcstrans) is not installed (Scored)
#1.6.1.5 "Ensure the MCS Translation Service (mcstrans) is not installed (Scored)" Yes Server2 Workstation2

execute(){
rpm -q mcstrans | grep -E "package mcstrans is not installed" || return $1
}
test_serial_number="1.6.1.5"
test_name="Ensure the MCS Translation Service (mcstrans) is not installed (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
important="Yes"
