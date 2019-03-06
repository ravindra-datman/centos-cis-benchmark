#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.4 - Ensure permissions on /etc/motd are configured (Not Scored)
#1.7.1.4 "Ensure permissions on /etc/motd are configured (Not Scored)" No Server1 Workstation1

execute(){
stat -L -c "%a %u %g" /etc/motd | grep -q "644 0 0$" || return $?
}
test_serial_number="1.7.1.4"
test_name="Ensure permissions on /etc/motd are configured (Not Scored)"
scored="No"
server="Server1"
workstation="Workstation1"
