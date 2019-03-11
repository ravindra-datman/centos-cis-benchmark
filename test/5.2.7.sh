#!/bin/sh
# ** AUTO GENERATED **

# 5.2.7 - Ensure SSH HostbasedAuthentication is disabled (Scored)
#5.2.7 "Ensure SSH HostbasedAuthentication is disabled (Scored)" Yes Server1 Workstation1

execute(){
grep "^\s*HostbasedAuthentication" /etc/ssh/sshd_config | grep -q "HostbasedAuthentication\s*no" || return $?
}
test_serial_number="5.2.7"
test_name="Ensure SSH HostbasedAuthentication is disabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
