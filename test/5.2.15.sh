#!/bin/sh
# ** AUTO GENERATED **

# 5.2.15 - Ensure SSH warning banner is configured (Scored)
# 5.2.15 "Ensure SSH warning banner is configured (Scored)" Yes Server1 Workstation1

execute(){
grep -qE "^Banner\s+" /etc/ssh/sshd_config || return $?
}
test_serial_number="5.2.15"
test_name="Ensure SSH warning banner is configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
