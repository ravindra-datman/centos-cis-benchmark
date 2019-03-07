#!/bin/sh
# ** AUTO GENERATED **

# 6.1.4 - Ensure permissions on /etc/group are configured (Scored)
# 6.1.4 "Ensure permissions on /etc/group are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/group | grep -q "644 0 0$" || return $?
}
test_serial_number="6.1.4"
test_name="Ensure permissions on /etc/group are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
