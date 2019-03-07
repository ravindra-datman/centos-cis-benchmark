#!/bin/sh
# ** AUTO GENERATED **

# 5.2.2 - Ensure SSH Protocol is set to 2 (Scored)
# 5.2.2 "Ensure SSH Protocol is set to 2 (Scored)" Yes Server1 Workstation1

execute(){
grep "^\s*Protocol" /etc/ssh/sshd_config | grep -q "Protocol\s*2" || return $?
}
test_serial_number="5.2.2"
test_name="Ensure SSH Protocol is set to 2 (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
