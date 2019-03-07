#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.3 - Ensure syslog-ng default file permissions configured (Scored)
# 4.2.2.3 "Ensure syslog-ng default file permissions configured (Scored)" Yes Server1 Workstation1

execute(){
perm=$(grep ^options /etc/syslog-ng/syslog-ng.conf | sed "s/^.* perm\(([0-9]*)\).*$/\1/" | sed "s/[^0-9]//g")

[[ "$perm" =~ 0[0-6][0-4]0$ ]] || return;
}
test_serial_number="4.2.2.3"
test_name="Ensure syslog-ng default file permissions configured (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
