#!/bin/sh
# ** AUTO GENERATED **

# 2.2.1.2 - Ensure ntp is configured (Scored)
# 2.2.1.2 "Ensure ntp is configured (Scored)" Yes Server1 Workstation1

execute(){
rpm -q ntp | grep -E "^ntp-"
if [[ $? -eq 0 ]]; then

  grep "^restrict -6 default kod nomodify notrap nopeer noquery" /etc/ntp.conf || return $1

  grep -E "^(server|pool)" /etc/ntp.conf || return $1
fi
}
test_serial_number="2.2.1.2"
test_name="Ensure ntp is configured (Scored)"
scored="Yes"
server="Server1"
workstation="workstation1"
