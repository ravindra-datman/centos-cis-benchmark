#!/bin/sh
# ** AUTO GENERATED **

# 6.1.6 - Ensure permissions on /etc/passwd- are configured (Scored)
#6.1.6 "Ensure permissions on /etc/passwd- are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/passwd- | grep -q "644 0 0$" || return $?
}
test_serial_number="6.1.6"
test_name="Ensure permissions on /etc/passwd- are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
