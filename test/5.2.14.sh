#!/bin/sh
# ** AUTO GENERATED **

# 5.2.14 - Ensure SSH access is limited (Scored)
# 5.2.14 "Ensure SSH access is limited (Scored)" Yes Server1 Workstation1

execute(){
grep -qE "^AllowUsers|^AllowGroups|^DenyUsers|^DenyGroups" /etc/ssh/sshd_config || return $?
}
test_serial_number="5.2.14"
test_name="Ensure SSH access is limited (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
