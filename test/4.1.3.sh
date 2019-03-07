#!/bin/sh
# ** AUTO GENERATED **

# 4.1.3 - Ensure auditing for processes that start prior to auditd is enabled (Scored)
# 4.1.3 "Ensure auditing for processes that start prior to auditd is enabled (Scored)" Yes Server2 Workstation2

execute(){
grep_grub="$(grep "^[[:space:]]*linux" /boot/grub2/grub.cfg | grep -v 'audit=1')"
[[ -z "${grep_grub}" ]] || return 1
}
test_serial_number="4.1.3"
test_name="Ensure auditing for processes that start prior to auditd is enabled (Scored)"
scored="Yes"
server="Server2"
workstation="Workstation2"
