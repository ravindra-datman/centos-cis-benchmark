#!/bin/sh
# ** AUTO GENERATED **

# 5.6 - Ensure access to the su command is restricted (Scored)
# 5.6 "Ensure access to the su command is restricted (Scored)" Yes Server1 Workstation1

execute(){
grep pam_wheel.so /etc/pam.d/su | grep -qE "^auth\s*required\s*pam_wheel.so\s*use_uid\s*$" || return $?
}
test_serial_number="5.6"
test_name="Ensure access to the su command is restricted (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
