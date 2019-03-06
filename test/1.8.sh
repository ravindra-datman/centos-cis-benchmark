#!/bin/sh
# ** AUTO GENERATED **

# 1.8 - Ensure updates, patches, and additional security software are installed (Scored)
# 1.8 "Ensure updates, patches, and additional security software are installed (Scored)" Yes Server1 Workstation1

execute(){
yum check-update --security 2>&1 | grep "No packages needed for security" || return $?
}
test_serial_number="1.8"
test_name="Ensure updates, patches, and additional security software are installed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
