#!/bin/sh
# ** AUTO GENERATED **

# 4.2.4 - Ensure permissions on all logfiles are configured (Scored)
# 4.2.4 "Ensure permissions on all logfiles are configured (Scored)" Yes Server1 Workstation1

execute(){
[[ $(find /var/log -type f -ls | grep -v "\-r\-\-\-\-\-\-\-\-" | grep -v "\-rw\-\-\-\-\-\-\-" | grep -v "\-rw\-r\-\-\-\-\-" | wc -l) -eq 0 ]] || return 1
}
test_serial_number="4.2.4"
test_name="Ensure permissions on all logfiles are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
