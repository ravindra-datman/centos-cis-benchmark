#!/bin/sh
# ** AUTO GENERATED **

# 6.1.7 - Ensure permissions on /etc/shadow- are configured (Scored)
# 6.1.7 "Ensure permissions on /etc/shadow- are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/shadow- | grep -q "^0 0 0$" || return $?
}
test_serial_number="6.1.7"
test_name="Ensure permissions on /etc/shadow- are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
