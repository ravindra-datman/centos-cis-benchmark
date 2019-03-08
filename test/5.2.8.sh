#!/bin/sh
# ** AUTO GENERATED **

# 5.2.8 - Ensure SSH root login is disabled (Scored)
# 5.2.8 "Ensure SSH root login is disabled (Scored)" Yes Server1 Workstation1

execute(){
grep "^\s*PermitRootLogin" /etc/ssh/sshd_config | grep -q "PermitRootLogin\s*no" || return $?
}
test_serial_number="5.2.8"
test_name="Ensure SSH root login is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
