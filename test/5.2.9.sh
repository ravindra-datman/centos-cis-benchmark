#!/bin/sh
# ** AUTO GENERATED **

# 5.2.9 - Ensure SSH PermitEmptyPasswords is disabled (Scored)
#5.2.9 "Ensure SSH PermitEmptyPasswords is disabled (Scored)" Yes Server1 Workstation1

execute(){
grep "^\s*PermitEmptyPasswords" /etc/ssh/sshd_config | grep -q "PermitEmptyPasswords\s*no" || return $?
}
test_serial_number="5.2.9"
test_name="Ensure SSH PermitEmptyPasswords is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
