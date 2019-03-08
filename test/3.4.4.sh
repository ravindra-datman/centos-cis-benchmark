#!/bin/sh
# ** AUTO GENERATED **

# 3.4.4 - Ensure permissions on /etc/hosts.allow are configured (Scored)
# 3.4.4 "Ensure permissions on /etc/hosts.allow are configured (Scored)" Yes Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/hosts.allow | grep -q "644 0 0$" || return $?
}
test_serial_number="3.4.4"
test_name="Ensure permissions on /etc/hosts.allow are configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
