#!/bin/sh
# ** AUTO GENERATED **

# 2.2.1.3 - Ensure chrony is configured (Scored)
# 2.2.1.3 "Ensure chrony is configured (Scored)" Yes Server1 Workstation1

execute(){
rpm -q chrony | grep -E "^chrony-"
if [[ $? -eq 0 ]]; then
        grep -E "^(server|pool)" /etc/chrony.conf || return $?
        grep -E "^OPTIONS" /etc/sysconfig/chronyd | grep "OPTIONS=\"-u chrony\"" || return $?
fi
}
test_serial_number="2.2.1.3"
test_name="Ensure chrony is configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
