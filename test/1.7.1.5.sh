#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.5 - Ensure permissions on /etc/issue are configured (Scored)
#1.7.1.5 "Ensure permissions on /etc/issue are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/issue | grep -q "644 0 0$" || return $?
}
test_serial_number="1.7.1.5"
test_name="Ensure permissions on /etc/issue are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
